.class public Lcom/tencent/tmdownloader/internal/a/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmdownloader/internal/a/f;


# instance fields
.field protected b:Z

.field protected c:Z

.field protected d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/a/f;->a:Lcom/tencent/tmdownloader/internal/a/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/f;->b:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/f;->c:Z

    .line 45
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/tmdownloader/internal/a/f;->d:I

    .line 52
    invoke-direct {p0}, Lcom/tencent/tmdownloader/internal/a/f;->e()V

    .line 53
    return-void
.end method

.method static a(Ljava/lang/String;)I
    .registers 4

    .prologue
    const v0, 0xe1000

    .line 74
    const-string v1, "WIFI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Split is not allowed in current version. netType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_24
    const-string v1, "net"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 87
    :cond_2c
    :goto_2c
    return v0

    .line 83
    :cond_2d
    const-string v1, "wap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 84
    const v0, 0x64000

    goto :goto_2c
.end method

.method public static declared-synchronized a()Lcom/tencent/tmdownloader/internal/a/f;
    .registers 2

    .prologue
    .line 60
    const-class v1, Lcom/tencent/tmdownloader/internal/a/f;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/f;->a:Lcom/tencent/tmdownloader/internal/a/f;

    if-nez v0, :cond_e

    .line 61
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/f;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/a/f;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/a/f;->a:Lcom/tencent/tmdownloader/internal/a/f;

    .line 64
    :cond_e
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/f;->a:Lcom/tencent/tmdownloader/internal/a/f;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/c/i;->c()Ljava/util/HashMap;

    move-result-object v3

    .line 143
    const-string v0, "isTaskAutoResume"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_21

    .line 145
    const-string v4, "false"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    move v0, v1

    :goto_1f
    iput-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/f;->b:Z

    .line 149
    :cond_21
    const-string v0, "isDownloadWifiOnly"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3b

    .line 151
    const-string v4, "false"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    :goto_39
    iput-boolean v1, p0, Lcom/tencent/tmdownloader/internal/a/f;->c:Z

    .line 155
    :cond_3b
    const-string v0, "maxTaskNum"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_55

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/a/f;->d:I

    .line 159
    :cond_55
    return-void

    :cond_56
    move v0, v2

    .line 145
    goto :goto_1f

    :cond_58
    move v1, v2

    .line 151
    goto :goto_39
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 126
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/f;->a:Lcom/tencent/tmdownloader/internal/a/f;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/f;->d:I

    if-ne v0, p1, :cond_7

    .line 131
    :goto_6
    return-void

    .line 129
    :cond_7
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/f;->a:Lcom/tencent/tmdownloader/internal/a/f;

    iput p1, v0, Lcom/tencent/tmdownloader/internal/a/f;->d:I

    .line 130
    const-string v0, "maxTaskNum"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Integer"

    invoke-static {v0, v1, v2}, Lcom/tencent/tmdownloader/internal/b/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public a(Z)V
    .registers 5

    .prologue
    .line 98
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/f;->a:Lcom/tencent/tmdownloader/internal/a/f;

    iget-boolean v0, v0, Lcom/tencent/tmdownloader/internal/a/f;->b:Z

    if-ne v0, p1, :cond_7

    .line 103
    :goto_6
    return-void

    .line 101
    :cond_7
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/f;->a:Lcom/tencent/tmdownloader/internal/a/f;

    iput-boolean p1, v0, Lcom/tencent/tmdownloader/internal/a/f;->b:Z

    .line 102
    const-string v0, "isTaskAutoResume"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "boolean"

    invoke-static {v0, v1, v2}, Lcom/tencent/tmdownloader/internal/b/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 220
    :cond_8
    :goto_8
    return v0

    .line 215
    :cond_9
    const-string v2, "WIFI"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v0, v1

    .line 216
    goto :goto_8

    .line 217
    :cond_13
    const-string v2, "net"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "WIFI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 218
    goto :goto_8
.end method

.method public b(Z)V
    .registers 5

    .prologue
    .line 112
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/f;->a:Lcom/tencent/tmdownloader/internal/a/f;

    iget-boolean v0, v0, Lcom/tencent/tmdownloader/internal/a/f;->c:Z

    if-ne v0, p1, :cond_7

    .line 117
    :goto_6
    return-void

    .line 115
    :cond_7
    sget-object v0, Lcom/tencent/tmdownloader/internal/a/f;->a:Lcom/tencent/tmdownloader/internal/a/f;

    iput-boolean p1, v0, Lcom/tencent/tmdownloader/internal/a/f;->c:Z

    .line 116
    const-string v0, "isDownloadWifiOnly"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "boolean"

    invoke-static {v0, v1, v2}, Lcom/tencent/tmdownloader/internal/b/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/f;->c:Z

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/tencent/tmdownloader/internal/a/f;->d:I

    return v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/f;->b:Z

    if-eqz v0, :cond_1a

    .line 191
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 192
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 193
    :cond_18
    const/4 v0, 0x1

    .line 196
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method