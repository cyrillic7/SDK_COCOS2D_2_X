.class public final Lcom/tencent/android/tpush/stat/a/i;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "default"

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a/i;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/stat/a/i;->b:Z

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/android/tpush/stat/a/i;->c:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "default"

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a/i;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/stat/a/i;->b:Z

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/android/tpush/stat/a/i;->c:I

    .line 71
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/a/i;->a:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 91
    if-nez v2, :cond_c

    .line 111
    :cond_b
    :goto_b
    return-object v0

    .line 94
    :cond_c
    array-length v3, v2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v3, :cond_b

    aget-object v4, v2, v1

    .line 95
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 94
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 99
    :cond_1b
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 103
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 127
    iget v0, p0, Lcom/tencent/android/tpush/stat/a/i;->c:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_14

    .line 128
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 129
    if-nez v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_f
    iget-object v1, p0, Lcom/tencent/android/tpush/stat/a/i;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_14
    return-void

    .line 129
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 261
    iget v0, p0, Lcom/tencent/android/tpush/stat/a/i;->c:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_c

    .line 262
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/a/i;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    :cond_c
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/tencent/android/tpush/stat/a/i;->b:Z

    .line 44
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/tencent/android/tpush/stat/a/i;->b:Z

    return v0
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 148
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/stat/a/i;->a(Ljava/lang/Object;)V

    .line 150
    :cond_9
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 298
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/stat/a/i;->a(Ljava/lang/Throwable;)V

    .line 300
    :cond_9
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 203
    iget v0, p0, Lcom/tencent/android/tpush/stat/a/i;->c:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_14

    .line 204
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 205
    if-nez v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_f
    iget-object v1, p0, Lcom/tencent/android/tpush/stat/a/i;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_14
    return-void

    .line 205
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public d(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 224
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/stat/a/i;->c(Ljava/lang/Object;)V

    .line 226
    :cond_9
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 241
    iget v0, p0, Lcom/tencent/android/tpush/stat/a/i;->c:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_14

    .line 242
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 243
    if-nez v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_f
    iget-object v1, p0, Lcom/tencent/android/tpush/stat/a/i;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_14
    return-void

    .line 243
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public f(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 280
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/stat/a/i;->e(Ljava/lang/Object;)V

    .line 282
    :cond_9
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 315
    iget v0, p0, Lcom/tencent/android/tpush/stat/a/i;->c:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_14

    .line 316
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 317
    if-nez v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_f
    iget-object v1, p0, Lcom/tencent/android/tpush/stat/a/i;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_14
    return-void

    .line 317
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public h(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 336
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/stat/a/i;->g(Ljava/lang/Object;)V

    .line 338
    :cond_9
    return-void
.end method