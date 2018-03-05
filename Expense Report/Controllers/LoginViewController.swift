import UIKit

class LoginViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Expense Report"
        label.numberOfLines = 1
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 36)
        return label
    }()
    
    let emailField: UITextField = {
        let tf = UITextField()
        tf.keyboardType = .emailAddress
        tf.font = UIFont.systemFont(ofSize: 24)
        tf.placeholder = "Email Address"
        return tf
    }()
    
    let passwordField: UITextField = {
        let tf = UITextField()
        tf.isSecureTextEntry = true
        tf.font = UIFont.systemFont(ofSize: 24)
        tf.placeholder = "Password"
        return tf
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Testi", for: .normal)
        return button
    }()
    
    let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("First time here?", for: .normal)
        return button
    }()
    
    let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot password?", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.isNavigationBarHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    fileprivate func setupView() {
        view.addSubview(titleLabel)
        titleLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom: nil, right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 64, paddingLeft: 16, paddingBottom: 0, paddingRight: 16, width: 0, height: 0)
        
        let stackedView: UIStackView = {
            let sv = UIStackView()
            sv.axis = .vertical
            sv.spacing = 8
            return sv
        }()
        
        stackedView.addArrangedSubview(emailField)
        
        let subStackedView: UIStackView = {
            let sv = UIStackView()
            sv.spacing = 8
            return sv
        }()
        subStackedView.addArrangedSubview(passwordField)
        subStackedView.addArrangedSubview(loginButton)
        stackedView.addArrangedSubview(subStackedView)
        
        stackedView.addArrangedSubview(registerButton)
        stackedView.addArrangedSubview(forgotPasswordButton)
        
        view.addSubview(stackedView)
        stackedView.centerInView(view: view)
        stackedView.anchor(top: nil, left: view.safeAreaLayoutGuide.leftAnchor, bottom: nil, right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 0, paddingLeft: 16, paddingBottom: 0, paddingRight: 16, width: 0, height: 0)
    }
}
