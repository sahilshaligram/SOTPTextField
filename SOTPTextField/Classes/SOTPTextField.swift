import UIKit
import Foundation

@IBDesignable
public class SOTPTextField: UITextField {
    
    //MARK: - Properties -
    private var number: Int = 4
    @IBInspectable
    var noOfDigits: Int {
        get {
            return number
        }
        set {
            number = newValue > 8 ? number : newValue
        }
    }
    private var round: Bool = false
    @IBInspectable
    var isRounded: Bool {
        get {
            return round
        }
        set {
            round = newValue
        }
    }
    private var isPrivate: Bool = false
    @IBInspectable
    var isSecured: Bool {
        get {
            return isPrivate
        }
        set {
            isPrivate = newValue
        }
    }
    private var bColor: UIColor = .lightGray
    @IBInspectable
    var borderColor: UIColor {
        get {
            return bColor
        }
        set {
            bColor = newValue
        }
    }
    private var bcColor: UIColor = .clear
    @IBInspectable
    var backgroundClr: UIColor {
        get {
            return bcColor
        }
        set {
            bcColor = newValue
        }
    }
    private var successfulColor: UIColor = .green
    @IBInspectable
    var successColor: UIColor {
        get {
            return successfulColor
        }
        set {
            successfulColor = newValue
        }
    }
    private var failureColor: UIColor = .red
    @IBInspectable
    var failColor: UIColor {
        get {
            return failureColor
        }
        set {
            failureColor = newValue
        }
    }
    
    //MARK: - internal properties -
    private var otpView: UIStackView?
    private var arrTextfields: [UITextField] = []
    private var arrOTP: [Int] = []
    private var txtWidth: Int = 0
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        prepareUI()
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        prepareUI()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        otpView?.translatesAutoresizingMaskIntoConstraints = false
        otpView?.topAnchor.constraint(equalTo: topAnchor).isActive = true
        otpView?.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        otpView?.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        otpView?.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    //MARK: - Prepare initial UI -
    func prepareUI() {
        heightAnchor.constraint(equalToConstant: 66).isActive = true
        textInputView.isHidden = true
        borderStyle = .none
        selectAll(nil)
        delegate = self
        let width = Int(frame.size.width)
        txtWidth = Int(width/number) - 16
        otpView = UIStackView()
        otpView?.axis = .horizontal
        otpView?.spacing = 8.0
        otpView?.alignment = .fill
        otpView?.distribution = .fillEqually
        otpView?.sizeToFit()
        addSubview(otpView!)
        bringSubviewToFront(otpView!)
        for i in 0..<number {
            prepareTextfields()
            arrTextfields[i].tag = i
            otpView?.addArrangedSubview(arrTextfields[i])
        }
        addToolBar()
        arrTextfields.first?.becomeFirstResponder()
    }
    
    func prepareTextfields() {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: txtWidth, height: 50))
        textField.isEnabled = true
        textField.backgroundColor = bcColor
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = bColor.cgColor
        textField.textAlignment = .center
        if isRounded {
            textField.clipsToBounds = true
            textField.layer.cornerRadius = textField.bounds.size.height / 2
        } else {
            textField.clipsToBounds = true
            textField.layer.cornerRadius = 8
        }
        textField.textColor = .black
        textField.placeholder = "0"
        textField.keyboardType = .numberPad
        if #available(iOS 12.0, *) {
            textField.textContentType = .oneTimeCode
        } else {
            // Fallback on earlier versions
        }
        textField.delegate = self
        textField.tintColor = .black
        textField.isSecureTextEntry = isPrivate
        arrTextfields.append(textField)
    }
    
    public func verifyOTP(_ otp: String, _ completionHandler: @escaping ((Bool)->())) {
        let enteredOtp = arrOTP.map({ "\($0)" }).joined()
        for textfield in arrTextfields {
            textfield.layer.borderColor = enteredOtp == otp ? successfulColor.cgColor : failureColor.cgColor
        }
        completionHandler(enteredOtp == otp)
    }
    
}

//MARK: - textfield delegates -
extension SOTPTextField: UITextFieldDelegate {
    
    func textFieldShouldReturnSingle(_ textField: UITextField , newString : String) {
        let nextTag: Int = textField.tag + 1
        let nextResponder: UIResponder? = textField.superview?.superview?.viewWithTag(nextTag)
        if textField.tag >= arrOTP.startIndex && textField.tag < arrOTP.endIndex {
            arrOTP[textField.tag] = Int(newString)!
        } else {
            arrOTP.append(Int(newString)!)
        }
        textField.text = newString
        if let nextR = nextResponder {
            nextR.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            resignFirstResponder()
        }
    }
    
    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == self {
            resignFirstResponder()
        }
        return true
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string.count == 1 {
            textFieldShouldReturnSingle(textField , newString : string)
            return false
        } else {
            return true
        }
    }
}

//MARK: - keyboard toolBar -
extension SOTPTextField {
    
    func addToolBar() {
        let numberToolbar = UIToolbar(frame:CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 30))
        numberToolbar.barStyle = .default
        numberToolbar.items = [
        UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneWithNumberPad))]
        numberToolbar.sizeToFit()
        for textfield in arrTextfields {
            textfield.inputAccessoryView = numberToolbar
        }
    }
    
    @objc func doneWithNumberPad() {
        for textfield in arrTextfields {
            textfield.resignFirstResponder()
        }
        resignFirstResponder()
    }
}
