.class Lcom/baidu/sapi2/share/b$b$a;
.super Ljava/lang/Object;
.source "SapiShareClient.java"

# interfaces
.implements Lcom/baidu/sapi2/share/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/share/b$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/share/b$b;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/b$b;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/baidu/sapi2/share/b$b$a;->a:Lcom/baidu/sapi2/share/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .registers 8
    .param p1, "receiverIntent"    # Landroid/content/Intent;

    .prologue
    .line 211
    new-instance v0, Lcom/baidu/sapi2/share/ShareModel;

    sget-object v1, Lcom/baidu/sapi2/share/ShareEvent;->INVALIDATE:Lcom/baidu/sapi2/share/ShareEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/baidu/sapi2/SapiAccount;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/sapi2/share/b$b$a;->a:Lcom/baidu/sapi2/share/b$b;

    iget-object v5, v5, Lcom/baidu/sapi2/share/b$b;->b:Lcom/baidu/sapi2/SapiAccount;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;Lcom/baidu/sapi2/SapiAccount;Ljava/util/List;)V

    .line 214
    .local v0, "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    invoke-static {p1, v0}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Intent;Lcom/baidu/sapi2/share/ShareModel;)V

    .line 215
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 7
    .param p1, "serviceIntent"    # Landroid/content/Intent;
    .param p2, "receiverIntent"    # Landroid/content/Intent;

    .prologue
    .line 173
    :try_start_0
    invoke-static {}, Lcom/baidu/sapi2/share/b;->c()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v2, Lcom/baidu/sapi2/share/b$b$a$a;

    invoke-direct {v2, p0, p2}, Lcom/baidu/sapi2/share/b$b$a$a;-><init>(Lcom/baidu/sapi2/share/b$b$a;Landroid/content/Intent;)V

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 207
    :goto_f
    return-void

    .line 204
    :catch_10
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_f
.end method