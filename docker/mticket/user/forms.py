from django import forms
from user.models import *
from django.utils import timezone
from django.core.validators import validate_email
import binascii, os


# form User đăng kí tài khoản
class RegistrationForm(forms.Form):
    fullname = forms.CharField(widget=forms.TextInput(
        attrs={               
            'class': 'form-control',
            'placeholder': 'Full name',
        }
    ))

    username = forms.CharField(widget=forms.TextInput(
        attrs={               
            'class': 'form-control',
            'placeholder': 'User name',
        }
    ))

    email = forms.CharField(widget=forms.TextInput(attrs={
        'class': 'form-control',
        'placeholder': 'Email'
    })
    )

    phone = forms.RegexField(regex=r'^\+?1?\d{9,15}$', error_messages={"invalid": "số điện thoại không hợp lệ"})

    password = forms.CharField(widget=forms.PasswordInput(
        attrs={               
            'class': 'form-control',
            'placeholder': 'Password',
        }
    ))

    password2 = forms.CharField(widget=forms.PasswordInput(
        attrs={               
            'class': 'form-control',
            'placeholder': 'Password',
        }
    ))

    # check password
    def clean_password2(self):
        if 'password' in self.cleaned_data:
            password = self.cleaned_data['password']
            password2 = self.cleaned_data['password2']
            if password == password2 and password:
                return password2
            else:
                raise forms.ValidationError("Mật khẩu nhắc lại không khớp")
        raise forms.ValidationError("Mật khẩu không hợp lệ")


    # check xem user name đã tồn tại hay chưa
    def clean_username(self):
        username =  self.cleaned_data['username']
        if get_user(username) is not None:
            raise forms.ValidationError("Tên đăng nhập đã tồn tại")
        return username

    # check email có đúng định dạng không, đã tồn tại chưa
    def clean_email(self):
        email = self.cleaned_data['email']
        if get_user_email(email) is not None:
            raise forms.ValidationError("Email đã được đăng ký")
        try:
            validate_email(email)
        except:
            raise forms.ValidationError("Email không hợp lệ")
        return email


    # lưu tài khoản User
    def save(self):
        u = Agents(fullname=self.cleaned_data['fullname'], username=self.cleaned_data['username'], email=self.cleaned_data['email'], phone=self.cleaned_data['phone'], password=self.cleaned_data['password'], created=timezone.now(), token=binascii.hexlify(os.urandom(24)).decode("utf-8"))
        u.save()
        return u


# form reset mật khẩu cho User
class UserResetForm(forms.Form):
    uemail = forms.CharField(widget=forms.TextInput(
        attrs={               
            'class': 'form-control',
            'placeholder': 'email',
        }
    ))

    # check email xem đã tồn tại chưa, đúng định dạng không
    def clean_uemail(self):
        uemail = self.cleaned_data['uemail']
        try:
            validate_email(uemail)
        except:
            raise forms.ValidationError("Email không hợp lệ")
        if get_user_email(uemail) is None:
            raise forms.ValidationError("Email chưa được đăng ký")
        return uemail

# form reset mật khẩu cho Agent
class AgentResetForm(forms.Form):
    aemail = forms.CharField(widget=forms.TextInput(
        attrs={               
            'class': 'form-control',
            'placeholder': 'email',
        }
    ))

    # check email xem đã tồn tại chưa, đúng định dạng không
    def clean_aemail(self):
        aemail = self.cleaned_data['aemail']
        try:
            validate_email(aemail)
        except:
            raise forms.ValidationError("Email không hợp lệ")
        if get_agent_email(aemail) is None:
            raise forms.ValidationError("Email chưa được đăng ký")
        return aemail


# form thay đổi mật khẩu mới khi User bấm vào link xác nhận trong email
class ResetForm(forms.Form):
    pwd1 = forms.CharField(widget=forms.PasswordInput(
        attrs={               
            'class': 'form-control',
            'placeholder': 'Password',
        }
    ))

    pwd2 = forms.CharField(widget=forms.PasswordInput(
        attrs={               
            'class': 'form-control',
            'placeholder': 'Password',
        }
    ))

    # check mật khẩu 
    def clean(self):
        if 'pwd1' in self.cleaned_data:
            pwd1 = self.cleaned_data['pwd1']
            pwd2 = self.cleaned_data['pwd2']
            if pwd1 == pwd2 and pwd1:
                return pwd1
            else:
                raise forms.ValidationError("Mật khẩu nhắc lại không khớp")
        raise forms.ValidationError("Mật khẩu không hợp lệ")

# form Agent đăng nhập
class AgentLoginForm(forms.Form):
    agentpass = forms.CharField(widget=forms.PasswordInput(
        attrs={
            'class': 'form-control',
            'placeholder': 'Password',
        }
    ))

    agentname = forms.CharField(widget=forms.TextInput(
        attrs={               
            'class': 'form-control',
            'placeholder': 'User name',
        }
    ))

    def clean_agentpass(self):
        agentpass = self.cleaned_data['agentpass']
        return agentpass

    def clean_agentname(self):
        if 'agentpass' in self.cleaned_data:
            agentname = self.cleaned_data['agentname']
            agentpass = self.cleaned_data['agentpass']
            if authenticate_agent(agentname=agentname, agentpass=agentpass) is None:
                raise forms.ValidationError('Tên đăng nhập hoặc mật khẩu không đúng!')
            ag = get_agent(agentname)
            if ag.status == 0:
                raise forms.ValidationError('Tài khoản bị khóa hoặc chưa kích hoạt')
        return agentname


# form tạo tịcket
class CreateNewTicketForm(forms.Form):
    loai_su_co = forms.CharField(widget=forms.TextInput(
        attrs={
            'class': 'form-control',
            'placeholder': 'Nhập loại sự cố',
            'name': 'loai_su_co',
        }
    ))

    thong_so_kt = forms.CharField(widget=forms.Textarea(
        attrs={
            'class': 'form-control',
            'placeholder': 'Nhập thông số',
            'name': 'thong_so_kt',
        }
    ))

    content = forms.CharField(widget=forms.Textarea(
        attrs={
            'class': 'form-control',
            'placeholder': 'Nhập nội dung',
            'name': 'content'
        })
    )

    attach = forms.FileField(required=False, widget=forms.FileInput(attrs={
        'class': 'form-control',
        'placeholder': 'Đính kèm',
        'id': 'i_file',
    })
    )
