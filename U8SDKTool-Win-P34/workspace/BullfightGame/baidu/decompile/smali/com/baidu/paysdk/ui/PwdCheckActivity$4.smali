.class Lcom/baidu/paysdk/ui/PwdCheckActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/PwdCheckActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PwdCheckActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdCheckActivity;

    # invokes: Lcom/baidu/paysdk/ui/PwdCheckActivity;->clearTasksTopOf(Lcom/baidu/wallet/core/BaseActivity;)V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->access$000(Lcom/baidu/wallet/core/BaseActivity;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdCheckActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdCheckActivity;

    invoke-virtual {v1}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_set_pwd_success"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/controllers/PasswordController;->checkPwdSucceed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdCheckActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/PwdCheckActivity;->finishWithoutAnim()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdCheckActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdCheckActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/BaiduWalletUtils;->startActivityAnim(Landroid/content/Context;)V

    return-void
.end method
