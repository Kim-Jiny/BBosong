//
//  EmailLoginViewController.swift
//  BBosong
//
//  Created by 김미진 on 12/4/23.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class EmailLoginViewController: UIViewController {
    private let disposeBag = DisposeBag()
    var viewModel: EmailLoginViewModel!
    
    // Outlet
    lazy var mainScrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.backgroundColor = .BBColor.subColor
        return scrollView
    }()
    
    lazy var loginMainView: UIView = {
        let v = UIView(frame: .zero)
        return v
    }()
    
    lazy var loginStackView: UIStackView = {
        let st = UIStackView(frame: .zero)
        return st
    }()
    
    lazy var emailLB: UILabel = {
        let lb = UILabel(frame: .zero)
        return lb
    }()
    
    lazy var emailField: UITextField = {
        let textF = UITextField(frame: .zero)
        return textF
    }()
    
    lazy var pwLB: UILabel = {
        let lb = UILabel(frame: .zero)
        return lb
    }()
    
    lazy var pwField: UITextField = {
        let textF = UITextField(frame: .zero)
        textF.isSecureTextEntry = true
        return textF
    }()
    
    lazy var signInButton: ProgressButton = {
        let bt = ProgressButton(frame: .zero)
        return bt
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 뷰 모델 초기화 및 데이터 가져오기
        viewModel = EmailLoginViewModel()
//        viewModel.fetchItems()
        
        setupUI()
        setUpBindings()
    }
    
    private func setupUI() {
        self.view.addSubview(mainScrollView)
        mainScrollView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalToSuperview().priority(.low)
        }
        
        mainScrollView.addSubview(loginMainView)
        loginMainView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        
        loginMainView.addSubview(loginStackView)
        loginStackView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        loginStackView.addArrangedSubview(emailLB)
        
        loginStackView.addArrangedSubview(emailField)
        emailField.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(44)
        }
        
        loginStackView.addArrangedSubview(pwLB)
        
        loginStackView.addArrangedSubview(pwField)
        pwField.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(44)
        }
    }
    
    private func setUpBindings() {
        guard let viewModel = viewModel else { return }
        
        Observable.of(emailField, pwField)
            .flatMap { $0.rx.controlEvent(.editingDidEndOnExit) }
            .withLatestFrom(viewModel.isSignInActive)
            .filter { $0 }
            .bind { [weak self] _ in self?.viewModel?.signIn() }
            .disposed(by: disposeBag)
        
        emailField.rx.text.orEmpty
            .bind(to: viewModel.email)
            .disposed(by: disposeBag)
        
        pwField.rx.text.orEmpty
            .bind(to: viewModel.password)
            .disposed(by: disposeBag)
        
        signInButton.rx.tap
            .bind { [weak self] in self?.viewModel?.signIn() }
            .disposed(by: disposeBag)
        
        viewModel.isSignInActive
            .bind(to: signInButton.rx.isEnabled)
            .disposed(by: disposeBag)
        
        viewModel.isLoading
            .bind { [weak self] in
                guard let self = self else { return }
                self.emailField.isEnabled = !$0
                self.pwField.isEnabled = !$0
                self.signInButton.isInProgress = $0
            }
            .disposed(by: disposeBag)
    }}
