.class final Lcom/baidu/bdgame/sdk/obf/ea$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/ee;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ea;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ea;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ea;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ea$3;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 6

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea$3;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ea;->a(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea$3;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ea;->d(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jd;->a(J)V

    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea$3;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ea;->e(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jd;->b(J)V

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "money cent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea$3;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ea;->f(Lcom/baidu/bdgame/sdk/obf/ea;)V

    .line 136
    return-void
.end method