.class Lcom/tencent/open/yyb/AppbarActivity$d;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/yyb/AppbarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/yyb/AppbarActivity;


# direct methods
.method private constructor <init>(Lcom/tencent/open/yyb/AppbarActivity;)V
    .registers 2

    .prologue
    .line 371
    iput-object p1, p0, Lcom/tencent/open/yyb/AppbarActivity$d;->a:Lcom/tencent/open/yyb/AppbarActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/yyb/AppbarActivity;Lcom/tencent/open/yyb/AppbarActivity$1;)V
    .registers 3

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/tencent/open/yyb/AppbarActivity$d;-><init>(Lcom/tencent/open/yyb/AppbarActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 374
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$d;->a:Lcom/tencent/open/yyb/AppbarActivity;

    const/4 v1, 0x1

    # invokes: Lcom/tencent/open/yyb/AppbarActivity;->setSupportZoom(Z)V
    invoke-static {v0, v1}, Lcom/tencent/open/yyb/AppbarActivity;->access$300(Lcom/tencent/open/yyb/AppbarActivity;Z)V

    .line 376
    iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$d;->a:Lcom/tencent/open/yyb/AppbarActivity;

    # getter for: Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
    invoke-static {v0}, Lcom/tencent/open/yyb/AppbarActivity;->access$400(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/AppbarJsBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/open/yyb/AppbarJsBridge;->ready()V

    .line 377
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .prologue
    .line 381
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 382
    iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$d;->a:Lcom/tencent/open/yyb/AppbarActivity;

    const/4 v1, 0x0

    # invokes: Lcom/tencent/open/yyb/AppbarActivity;->setSupportZoom(Z)V
    invoke-static {v0, v1}, Lcom/tencent/open/yyb/AppbarActivity;->access$300(Lcom/tencent/open/yyb/AppbarActivity;Z)V

    .line 383
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 386
    :cond_19
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 390
    const-string v2, "openSDK_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->(AppbarDialog)shouldOverrideUrlLoading : url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 404
    :cond_20
    :goto_20
    return v1

    .line 395
    :cond_21
    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "https"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 396
    :cond_31
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_20

    .line 397
    :cond_36
    const-string v2, "jsb://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 398
    iget-object v1, p0, Lcom/tencent/open/yyb/AppbarActivity$d;->a:Lcom/tencent/open/yyb/AppbarActivity;

    # getter for: Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
    invoke-static {v1}, Lcom/tencent/open/yyb/AppbarActivity;->access$400(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/AppbarJsBridge;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/tencent/open/yyb/AppbarJsBridge;->invoke(Ljava/lang/String;)V

    move v1, v0

    .line 399
    goto :goto_20

    .line 400
    :cond_49
    const-string v2, "about:blank;"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "about:blank"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 402
    :cond_59
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_61

    :goto_5f
    move v1, v0

    goto :goto_20

    :cond_61
    move v0, v1

    goto :goto_5f
.end method
