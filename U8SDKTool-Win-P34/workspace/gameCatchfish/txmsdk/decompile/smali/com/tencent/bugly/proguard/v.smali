.class public final Lcom/tencent/bugly/proguard/v;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static b:Lcom/tencent/bugly/proguard/v;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/v;->b:Lcom/tencent/bugly/proguard/v;

    return-void
.end method

.method protected constructor <init>()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/v;->a:Z

    .line 40
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/v;->a:Z

    .line 41
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v2, :cond_26

    const-string v3, "test-keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    :goto_15
    if-nez v0, :cond_25

    .line 42
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->c()Z

    move-result v0

    if-nez v0, :cond_25

    .line 43
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->d()Z

    move-result v0

    if-nez v0, :cond_25

    .line 44
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/v;->a:Z

    .line 45
    :cond_25
    return-void

    :cond_26
    move v0, v1

    .line 41
    goto :goto_15
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/v;
    .registers 2

    .prologue
    .line 31
    const-class v1, Lcom/tencent/bugly/proguard/v;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/proguard/v;->b:Lcom/tencent/bugly/proguard/v;

    if-nez v0, :cond_e

    .line 33
    new-instance v0, Lcom/tencent/bugly/proguard/v;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/v;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/v;->b:Lcom/tencent/bugly/proguard/v;

    .line 35
    :cond_e
    sget-object v0, Lcom/tencent/bugly/proguard/v;->b:Lcom/tencent/bugly/proguard/v;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c()Z
    .registers 2

    .prologue
    .line 82
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_f

    move-result v0

    if-eqz v0, :cond_10

    .line 85
    const/4 v0, 0x1

    .line 92
    :goto_e
    return v0

    .line 88
    :catch_f
    move-exception v0

    .line 92
    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static d()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "/system/bin/sh"

    aput-object v3, v0, v1

    const-string v3, "-c"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "type su"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/tencent/bugly/proguard/a;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3d

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 103
    const-string v4, "not found"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v1

    .line 110
    :goto_3a
    return v0

    :cond_3b
    move v0, v2

    .line 108
    goto :goto_3a

    :cond_3d
    move v0, v1

    .line 110
    goto :goto_3a
.end method


# virtual methods
.method public final declared-synchronized b()Z
    .registers 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/v;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
