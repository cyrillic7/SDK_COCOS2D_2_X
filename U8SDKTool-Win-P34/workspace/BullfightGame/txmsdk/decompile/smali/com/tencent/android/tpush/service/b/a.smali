.class public Lcom/tencent/android/tpush/service/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->INTENTSCHEMECHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static a:J

.field private static b:Lcom/tencent/android/tpush/service/b/a;

.field private static final c:[B

.field private static d:J

.field private static volatile e:Z

.field private static volatile f:Z

.field private static volatile g:Z


# instance fields
.field private h:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/tencent/android/tpush/service/b/a;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/b/a;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/b/a;->b:Lcom/tencent/android/tpush/service/b/a;

    .line 89
    new-array v0, v2, [B

    sput-object v0, Lcom/tencent/android/tpush/service/b/a;->c:[B

    .line 98
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/android/tpush/service/b/a;->d:J

    .line 99
    sput-boolean v2, Lcom/tencent/android/tpush/service/b/a;->e:Z

    .line 101
    sput-boolean v2, Lcom/tencent/android/tpush/service/b/a;->f:Z

    .line 103
    sput-boolean v2, Lcom/tencent/android/tpush/service/b/a;->g:Z

    .line 1812
    const-wide/32 v0, 0x4ab50

    sput-wide v0, Lcom/tencent/android/tpush/service/b/a;->a:J

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/b/a;->h:Landroid/app/PendingIntent;

    .line 117
    return-void
.end method

.method public static a()Lcom/tencent/android/tpush/service/b/a;
    .registers 1

    .prologue
    .line 120
    sget-object v0, Lcom/tencent/android/tpush/service/b/a;->b:Lcom/tencent/android/tpush/service/b/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7

    .prologue
    .line 1855
    :try_start_0
    invoke-static {p4}, Lcom/tencent/android/tpush/common/k;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    .line 1856
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 1861
    :goto_1c
    return-void

    .line 1858
    :catch_1d
    move-exception v0

    .line 1859
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V
    .registers 16

    .prologue
    const-wide/16 v10, 0x0

    .line 1481
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ dispatchMessageOnTime("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "multiPkg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1485
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "accId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1487
    cmp-long v1, v2, v10

    if-nez v1, :cond_ca

    .line 1488
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1494
    :goto_59
    const-string v0, "XGService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",multipkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",pkgs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const/4 v0, 0x0

    move v2, v0

    :goto_8b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_21a

    .line 1498
    :try_start_91
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1499
    const-string v3, "XGService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> pkgs.get("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 1503
    const-string v0, "XGService"

    const-string v3, ">> msg.appPkgName is null!"

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_c6} :catch_109

    .line 1496
    :cond_c6
    :goto_c6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8b

    .line 1490
    :cond_ca
    const-string v0, "XGService"

    const-string v1, ">> multi_pkg"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-static {}, Lcom/tencent/android/tpush/service/b/k;->a()Lcom/tencent/android/tpush/service/b/k;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/android/tpush/service/b/k;->a(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_59

    .line 1507
    :cond_e0
    :try_start_e0
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v4, v5}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_114

    .line 1510
    invoke-static {}, Lcom/tencent/android/tpush/service/o;->a()Lcom/tencent/android/tpush/service/o;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/android/tpush/service/o;->a(Ljava/lang/String;)V

    .line 1512
    invoke-static {}, Lcom/tencent/android/tpush/service/b/k;->a()Lcom/tencent/android/tpush/service/b/k;

    move-result-object v3

    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Lcom/tencent/android/tpush/service/b/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1514
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v3, v0, v6}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_108} :catch_109

    goto :goto_c6

    .line 1562
    :catch_109
    move-exception v0

    .line 1563
    const-string v3, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c6

    .line 1519
    :cond_114
    :try_start_114
    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/b;

    move-result-object v3

    .line 1521
    if-eqz v3, :cond_c6

    .line 1524
    iget v6, v3, Lcom/tencent/android/tpush/data/b;->e:I

    if-lez v6, :cond_14a

    .line 1525
    const-string v3, "XGService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unregistered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v3, v0, v6}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_c6

    .line 1532
    :cond_14a
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v6

    iget-wide v8, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {p0, v6, v0, v8, v9}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_178

    .line 1534
    const-string v0, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> msgId:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " has been cached."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c6

    .line 1538
    :cond_178
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v6

    iget-wide v8, v3, Lcom/tencent/android/tpush/data/b;->a:J

    invoke-static {v6, v8, v9}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 1540
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1541
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 1542
    const-string v0, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> msgId:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " has been cached."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c6

    .line 1546
    :cond_1c9
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v3

    iget-wide v6, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {p0, v3, v0, v6, v7}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_1f7

    .line 1548
    const-string v0, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> msgId:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " has been acked."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c6

    .line 1552
    :cond_1f7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1553
    iput-object v0, p3, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    .line 1554
    iget-wide v6, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v3, v6, v10

    if-lez v3, :cond_209

    .line 1555
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p3}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V

    .line 1557
    :cond_209
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p1}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1559
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/b/a;->c()V

    .line 1561
    iget-object v3, p3, Lcom/tencent/android/tpush/data/MessageId;->date:Ljava/lang/String;

    invoke-virtual {p0, v3, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_218} :catch_109

    goto/16 :goto_c6

    .line 1566
    :cond_21a
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/b/a;)V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/b/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/b/a;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/b/a;Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)V

    return-void
.end method

.method private a(Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;JLcom/tencent/android/tpush/service/channel/a;)V
    .registers 19

    .prologue
    .line 1611
    const-string v2, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@ distribute2SDK("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1614
    new-instance v6, Lcom/tencent/android/tpush/data/MessageId;

    invoke-direct {v6}, Lcom/tencent/android/tpush/data/MessageId;-><init>()V

    .line 1615
    iget-wide v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    iput-wide v2, v6, Lcom/tencent/android/tpush/data/MessageId;->id:J

    .line 1616
    const/4 v2, 0x0

    iput-short v2, v6, Lcom/tencent/android/tpush/data/MessageId;->isAck:S

    .line 1617
    iget-wide v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    iput-wide v2, v6, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    .line 1618
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/android/tpush/service/channel/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/d;->b(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/tencent/android/tpush/data/MessageId;->host:J

    .line 1619
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/android/tpush/service/channel/a;->e()I

    move-result v2

    iput v2, v6, Lcom/tencent/android/tpush/data/MessageId;->port:I

    .line 1620
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/android/tpush/service/channel/a;->b()Z

    move-result v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/o;->a(Z)B

    move-result v2

    iput-byte v2, v6, Lcom/tencent/android/tpush/data/MessageId;->pact:B

    .line 1621
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/d;->e(Landroid/content/Context;)B

    move-result v2

    iput-byte v2, v6, Lcom/tencent/android/tpush/data/MessageId;->apn:B

    .line 1622
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/d;->f(Landroid/content/Context;)B

    move-result v2

    iput-byte v2, v6, Lcom/tencent/android/tpush/data/MessageId;->isp:B

    .line 1623
    move-wide/from16 v0, p2

    iput-wide v0, v6, Lcom/tencent/android/tpush/data/MessageId;->pushTime:J

    .line 1624
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/android/tpush/data/MessageId;->serviceHost:Ljava/lang/String;

    .line 1625
    iput-wide v4, v6, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    .line 1626
    iget-object v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    iput-object v2, v6, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    .line 1627
    iget-wide v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    iput-wide v2, v6, Lcom/tencent/android/tpush/data/MessageId;->busiMsgId:J

    .line 1628
    iget-wide v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    iput-wide v2, v6, Lcom/tencent/android/tpush/data/MessageId;->timestamp:J

    .line 1629
    iget-wide v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    iput-wide v2, v6, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    .line 1630
    iget-wide v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    iput-wide v2, v6, Lcom/tencent/android/tpush/data/MessageId;->multiPkg:J

    .line 1631
    iget-object v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    iput-object v2, v6, Lcom/tencent/android/tpush/data/MessageId;->date:Ljava/lang/String;

    .line 1633
    const-wide/32 v2, 0xf731400

    .line 1635
    iget v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    if-lez v7, :cond_20d

    .line 1636
    iget v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 1641
    :cond_ac
    :goto_ac
    iget-wide v8, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_21d

    iget-wide v8, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_21d

    .line 1642
    iget-wide v8, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long/2addr v8, v4

    add-long/2addr v2, v8

    .line 1648
    :goto_c6
    const-string v7, "confirmMs"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">> msg distribute @msgId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v6, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @accId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v6, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @timeUs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @recTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v6, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @msg.date="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @msg.busiMsgId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @msg.timestamp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @msg.type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @msg.multiPkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @msg.serverTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @msg.ttl="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @expire_time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @currentTimeMillis="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1673
    iget-object v8, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1674
    const-string v8, "msgId"

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1675
    const-string v8, "title"

    iget-object v9, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->title:Ljava/lang/String;

    invoke-static {v9}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1676
    const-string v8, "content"

    iget-object v9, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->content:Ljava/lang/String;

    invoke-static {v9}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1677
    const-string v8, "date"

    iget-object v9, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1678
    const-string v8, "type"

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1679
    const-string v8, "accId"

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1680
    const-string v8, "busiMsgId"

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1681
    const-string v8, "timestamps"

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1682
    const-string v8, "multiPkg"

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1683
    const-string v8, "server_time"

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1684
    const-string v8, "time_gap"

    iget-wide v10, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    sub-long/2addr v4, v10

    invoke-virtual {v7, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1685
    const-string v4, "ttl"

    iget v5, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1686
    const-string v4, "expire_time"

    invoke-virtual {v7, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1689
    const-string v2, "svrAck"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1691
    const-string v2, "svrPkgName"

    invoke-static {}, Lcom/tencent/android/tpush/service/l;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1695
    :try_start_1f1
    const-string v2, "enKeySet"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "content"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/tencent/android/tpush/common/k;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_207} :catch_220

    .line 1702
    :goto_207
    iget-object v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-direct {p0, v7, v2, v6}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V

    .line 1703
    return-void

    .line 1637
    :cond_20d
    iget-wide v8, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_ac

    iget v7, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    if-nez v7, :cond_ac

    .line 1638
    const-wide/16 v2, 0x7530

    goto/16 :goto_ac

    .line 1645
    :cond_21d
    add-long/2addr v2, v4

    goto/16 :goto_c6

    .line 1699
    :catch_220
    move-exception v2

    .line 1700
    const-string v3, "XGService"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_207
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 66
    sput-boolean p0, Lcom/tencent/android/tpush/service/b/a;->e:Z

    return p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 1865
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/android/tpush/service/d/d;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1866
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1867
    invoke-static {v0}, Lcom/tencent/android/tpush/common/k;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    .line 1871
    :goto_1d
    return-object v0

    .line 1868
    :catch_1e
    move-exception v0

    .line 1869
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private declared-synchronized b()V
    .registers 3

    .prologue
    .line 1818
    monitor-enter p0

    :try_start_1
    const-string v0, "XGService"

    const-string v1, "@@ cacheMsgBeat()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->b()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/b;->b(Z)I

    move-result v0

    .line 1820
    if-lez v0, :cond_16

    .line 1821
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/b/a;->c()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 1822
    :cond_16
    monitor-exit p0

    return-void

    .line 1818
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)V
    .registers 8

    .prologue
    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)Ljava/util/ArrayList;

    move-result-object v0

    .line 278
    const-string v1, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> requestServiceAck idList\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-boolean v1, Lcom/tencent/android/tpush/service/b/a;->f:Z

    if-eqz v1, :cond_28

    .line 280
    const-string v0, "XGService"

    const-string v1, ">> requestServiceAck msg ack is uploading , this time will give up!"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_27
    :goto_27
    return-void

    .line 284
    :cond_28
    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 286
    const-string v2, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> requestServiceAck list\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",idList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_27

    .line 291
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/android/tpush/service/b/a;->f:Z

    .line 292
    invoke-static {}, Lcom/tencent/android/tpush/service/o;->a()Lcom/tencent/android/tpush/service/o;

    move-result-object v0

    new-instance v2, Lcom/tencent/android/tpush/service/b/d;

    invoke-direct {v2, p0, p1}, Lcom/tencent/android/tpush/service/b/d;-><init>(Lcom/tencent/android/tpush/service/b/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/o;->a(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/o;)V

    goto :goto_27
.end method

.method static synthetic b(Z)Z
    .registers 1

    .prologue
    .line 66
    sput-boolean p0, Lcom/tencent/android/tpush/service/b/a;->f:Z

    return p0
.end method

.method private c()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1828
    const-string v0, "XGService"

    const-string v1, "@@ scheduleCacheMsgBeat()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    iget-object v0, p0, Lcom/tencent/android/tpush/service/b/a;->h:Landroid/app/PendingIntent;

    if-nez v0, :cond_32

    .line 1830
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/b/h;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/b/h;-><init>(Lcom/tencent/android/tpush/service/b/a;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.android.tpush.service.channel.cacheMsgBeatIntent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1841
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.service.channel.cacheMsgBeatIntent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1843
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/b/a;->h:Landroid/app/PendingIntent;

    .line 1847
    :cond_32
    invoke-static {}, Lcom/tencent/android/tpush/service/t;->a()Lcom/tencent/android/tpush/service/t;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/tencent/android/tpush/service/b/a;->a:J

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/tencent/android/tpush/service/b/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v1}, Lcom/tencent/android/tpush/service/t;->a(IJLandroid/app/PendingIntent;)V

    .line 1850
    return-void
.end method

.method static synthetic c(Z)Z
    .registers 1

    .prologue
    .line 66
    sput-boolean p0, Lcom/tencent/android/tpush/service/b/a;->g:Z

    return p0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    .prologue
    .line 531
    const/4 v1, 0x0

    .line 532
    if-eqz p1, :cond_5f

    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 533
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ getServiceMsgIdListByPackName(current pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",remote pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v0, ".tpns.msg.id.service"

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_5f

    .line 540
    check-cast v0, Ljava/util/ArrayList;

    .line 542
    :goto_3f
    const-string v1, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> serviceMsgIdList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    if-nez v0, :cond_5e

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    :cond_5e
    return-object v0

    :cond_5f
    move-object v0, v1

    goto :goto_3f
.end method

.method private d(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .prologue
    .line 124
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ requestAck("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 128
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    const-string v0, "XGService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> requestAck >> idList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v4, "XGService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> msg ack available, ack_count:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v5, Lcom/tencent/android/tpush/service/a/a;->l:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",ack_duration:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v5, Lcom/tencent/android/tpush/service/a/a;->m:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "current_list:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_a1

    const/4 v0, 0x0

    :goto_74
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "time:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v6, Lcom/tencent/android/tpush/service/b/a;->d:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-boolean v0, Lcom/tencent/android/tpush/service/b/a;->e:Z

    if-eqz v0, :cond_a6

    .line 136
    const-string v0, "XGService"

    const-string v1, ">> msg ack is uploading , this time will give up!"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_a0
    return-void

    .line 130
    :cond_a1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_74

    .line 140
    :cond_a6
    invoke-virtual {p0, p1, v1}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_b7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b7

    .line 143
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/android/tpush/service/b/a;->e:Z

    .line 144
    sput-wide v2, Lcom/tencent/android/tpush/service/b/a;->d:J

    .line 146
    :cond_b7
    invoke-static {}, Lcom/tencent/android/tpush/service/o;->a()Lcom/tencent/android/tpush/service/o;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/b/b;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/tencent/android/tpush/service/b/b;-><init>(Lcom/tencent/android/tpush/service/b/a;Ljava/util/ArrayList;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/service/o;->a(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/o;)V

    goto :goto_a0
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    .prologue
    .line 756
    const/4 v1, 0x0

    .line 757
    if-eqz p1, :cond_5f

    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 758
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ getClickedMessageIdListByPkgName(current pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",remote pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v0, ".tpns.msg.id.clicked"

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 764
    if-eqz v0, :cond_5f

    .line 765
    check-cast v0, Ljava/util/ArrayList;

    .line 767
    :goto_3f
    const-string v1, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> clickedMsgIdList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    if-nez v0, :cond_5e

    .line 770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 772
    :cond_5e
    return-object v0

    :cond_5f
    move-object v0, v1

    goto :goto_3f
.end method

.method private f(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9

    .prologue
    .line 872
    const/4 v0, 0x0

    .line 873
    if-eqz p1, :cond_5f

    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 874
    const-string v1, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ getAckedMsgIdListByPackName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 878
    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5f

    .line 879
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 880
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 881
    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/MessageId;->a()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 882
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 883
    :cond_52
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 884
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_5e
    move-object v0, v1

    .line 889
    :cond_5f
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 10

    .prologue
    .line 597
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ getClickedReqMsgIdList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x0

    .line 600
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 601
    if-eqz v2, :cond_d5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d5

    .line 602
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 603
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/PushClickEntity;

    .line 604
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;-><init>()V

    .line 605
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->accessId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->accessId:J

    .line 606
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->msgId:J

    .line 607
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->broadcastId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->broadcastId:J

    .line 608
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->timestamp:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->timestamp:J

    .line 609
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->type:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->type:J

    .line 610
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->clickTime:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->clickTime:J

    .line 611
    iget v0, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->action:I

    int-to-long v4, v0

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->action:J

    .line 612
    const-string v0, "confirmMs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++ getClickedReqMsgIdList @msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->msgId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @accId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->accessId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @broadcastId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->broadcastId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->timestamp:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @report.type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->type:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @report.clickTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->clickTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @report.action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->action:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/android/tpush/logging/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-le v0, v3, :cond_38

    .line 624
    :goto_d3
    return-object v1

    :cond_d4
    move-object v0, v1

    :cond_d5
    move-object v1, v0

    goto :goto_d3
.end method

.method public a(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)Ljava/util/ArrayList;
    .registers 10

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 447
    if-eqz p1, :cond_96

    .line 448
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ getServiceMsgIdList("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x0

    .line 451
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 452
    if-eqz v3, :cond_92

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_92

    .line 453
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 454
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 457
    if-eqz p2, :cond_56

    iget-object v5, p2, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 458
    :cond_56
    const/4 v0, 0x1

    .line 460
    :goto_57
    if-eqz v4, :cond_62

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_62

    .line 461
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_62
    move v1, v0

    .line 463
    goto :goto_3c

    :cond_64
    move-object v0, v2

    .line 465
    :goto_65
    if-nez v1, :cond_84

    .line 467
    :try_start_67
    iget-object v1, p2, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_84

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_84

    .line 471
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 472
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8a

    .line 473
    invoke-virtual {v0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 474
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_84} :catch_8e

    .line 483
    :cond_84
    :goto_84
    const-string v1, "all"

    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 485
    :goto_89
    return-object v0

    .line 476
    :cond_8a
    :try_start_8a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_84

    .line 479
    :catch_8e
    move-exception v1

    goto :goto_84

    :cond_90
    move v0, v1

    goto :goto_57

    :cond_92
    move v6, v0

    move-object v0, v1

    move v1, v6

    goto :goto_65

    :cond_96
    move-object v0, v1

    goto :goto_89
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    .prologue
    .line 902
    const/4 v1, 0x0

    .line 903
    if-eqz p1, :cond_5f

    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 904
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ getMessageIdListByPkgName(current pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",remote pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v0, ".tpns.msg.id"

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 910
    if-eqz v0, :cond_5f

    .line 911
    check-cast v0, Ljava/util/ArrayList;

    .line 913
    :goto_3f
    const-string v1, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> msgIdList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    if-nez v0, :cond_5e

    .line 915
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 917
    :cond_5e
    return-object v0

    :cond_5f
    move-object v0, v1

    goto :goto_3f
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 11

    .prologue
    .line 404
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ getServiceReqMsgIdList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x0

    .line 407
    if-eqz p2, :cond_ff

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_ff

    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 410
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;-><init>()V

    .line 411
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    .line 412
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    .line 413
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->apn:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->apn:B

    .line 414
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->isp:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->isp:B

    .line 415
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->host:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->locip:J

    .line 416
    iget v4, v0, Lcom/tencent/android/tpush/data/MessageId;->port:I

    iput v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->locport:I

    .line 417
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pact:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->pack:B

    .line 418
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pushTime:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timeUs:J

    .line 419
    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    invoke-static {p1, v4, v5}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getQua(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->qua:Ljava/lang/String;

    .line 420
    iget-object v4, v0, Lcom/tencent/android/tpush/data/MessageId;->serviceHost:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->serviceHost:Ljava/lang/String;

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->confirmMs:J

    .line 422
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->busiMsgId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->broadcastId:J

    .line 423
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->timestamp:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timestamp:J

    .line 424
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->type:J

    .line 425
    const/4 v4, 0x1

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->ackType:B

    .line 426
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->receiveTime:J

    .line 428
    const-string v4, "confirmMs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++ getServiceReqMsgIdList @msgId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @accId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @timeUs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timeUs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @confirmMs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->confirmMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @recTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @msgType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " @broadcastId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->broadcastId:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/android/tpush/logging/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-le v0, v3, :cond_34

    .line 441
    :goto_fd
    return-object v1

    :cond_fe
    move-object v0, v1

    :cond_ff
    move-object v1, v0

    goto :goto_fd
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    .line 214
    if-eqz p1, :cond_4a

    if-eqz p2, :cond_4a

    .line 215
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ msgAck_service("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "msgId"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 219
    const-string v0, "packName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 221
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;JS)V

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Landroid/content/Intent;)V

    .line 224
    :cond_4a
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;JLcom/tencent/android/tpush/service/channel/a;)V
    .registers 13

    .prologue
    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 255
    new-instance v2, Lcom/tencent/android/tpush/data/MessageId;

    invoke-direct {v2}, Lcom/tencent/android/tpush/data/MessageId;-><init>()V

    .line 256
    iget-wide v4, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    iput-wide v4, v2, Lcom/tencent/android/tpush/data/MessageId;->id:J

    .line 257
    iget-wide v4, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    iput-wide v4, v2, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    .line 258
    invoke-virtual {p5}, Lcom/tencent/android/tpush/service/channel/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/d/d;->b(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/android/tpush/data/MessageId;->host:J

    .line 259
    invoke-virtual {p5}, Lcom/tencent/android/tpush/service/channel/a;->e()I

    move-result v3

    iput v3, v2, Lcom/tencent/android/tpush/data/MessageId;->port:I

    .line 260
    invoke-virtual {p5}, Lcom/tencent/android/tpush/service/channel/a;->b()Z

    move-result v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/o;->a(Z)B

    move-result v3

    iput-byte v3, v2, Lcom/tencent/android/tpush/data/MessageId;->pact:B

    .line 261
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/d/d;->e(Landroid/content/Context;)B

    move-result v3

    iput-byte v3, v2, Lcom/tencent/android/tpush/data/MessageId;->apn:B

    .line 262
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/d/d;->f(Landroid/content/Context;)B

    move-result v3

    iput-byte v3, v2, Lcom/tencent/android/tpush/data/MessageId;->isp:B

    .line 263
    iput-wide p3, v2, Lcom/tencent/android/tpush/data/MessageId;->pushTime:J

    .line 264
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/android/tpush/data/MessageId;->serviceHost:Ljava/lang/String;

    .line 265
    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    .line 266
    iget-object v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    .line 267
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->busiMsgId:J

    .line 268
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->timestamp:J

    .line 269
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    .line 270
    iget-wide v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->multiPkg:J

    .line 271
    iget-object v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/android/tpush/data/MessageId;->date:Ljava/lang/String;

    .line 272
    iget-object v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V

    .line 273
    invoke-direct {p0, p1, v2}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Lcom/tencent/android/tpush/data/MessageId;)V

    .line 274
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 16

    .prologue
    .line 1220
    sget-object v2, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v2

    .line 1221
    if-eqz p1, :cond_e6

    .line 1222
    :try_start_5
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ deleteCachedMsgIntentByPkgNameBusiId(current pkg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",remote pkg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1228
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@ deleteCachedMsgIntentByPkgNameBusiId(current pkg:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",remote pkg:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    if-eqz v3, :cond_e3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e3

    .line 1233
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    const/4 v0, 0x0

    move v1, v0

    :goto_8c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b6

    .line 1235
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1236
    iget-object v5, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->intent:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1237
    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 1239
    const-string v6, "busiMsgId"

    const-wide/16 v8, -0x1

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v5, p3, v6

    if-nez v5, :cond_b2

    .line 1241
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    :cond_b2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8c

    .line 1244
    :cond_b6
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCachedMsgIntentByPkgNameBusiId removeList:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", size:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1250
    :cond_e3
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1252
    :cond_e6
    monitor-exit v2

    .line 1253
    return-void

    .line 1252
    :catchall_e8
    move-exception v0

    monitor-exit v2
    :try_end_ea
    .catchall {:try_start_5 .. :try_end_ea} :catchall_e8

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JS)V
    .registers 13

    .prologue
    .line 950
    sget-object v1, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v1

    .line 951
    if-eqz p1, :cond_6c

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_6c

    .line 952
    :try_start_b
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ updateMsgIdFlag(current pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",remote pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 958
    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6c

    .line 959
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_51
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 960
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v4, v4, p3

    if-nez v4, :cond_51

    .line 961
    iput-short p5, v0, Lcom/tencent/android/tpush/data/MessageId;->isAck:S

    goto :goto_51

    .line 967
    :catchall_66
    move-exception v0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_b .. :try_end_68} :catchall_66

    throw v0

    .line 964
    :cond_69
    :try_start_69
    invoke-virtual {p0, p1, p2, v2}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 967
    :cond_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_66

    .line 968
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 16

    .prologue
    const/4 v1, 0x0

    .line 1145
    sget-object v4, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v4

    .line 1146
    if-eqz p1, :cond_ec

    :try_start_6
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ec

    if-eqz p3, :cond_ec

    .line 1148
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ addCachedMsgIntent(current pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",remote pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    new-instance v5, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    invoke-direct {v5}, Lcom/tencent/android/tpush/data/CachedMessageIntent;-><init>()V

    .line 1153
    iput-object p2, v5, Lcom/tencent/android/tpush/data/CachedMessageIntent;->pkgName:Ljava/lang/String;

    .line 1154
    const-string v0, "msgId"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/android/tpush/data/CachedMessageIntent;->msgId:J

    .line 1156
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/android/tpush/data/CachedMessageIntent;->intent:Ljava/lang/String;

    .line 1158
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1160
    if-nez v2, :cond_a6

    .line 1161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 1174
    :goto_62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 1176
    const/16 v0, 0x3e8

    if-le v3, v0, :cond_e6

    .line 1177
    const-string v0, "XGService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "too much cache msg, try to cut "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1179
    :goto_85
    if-ge v0, v3, :cond_e6

    .line 1180
    const-string v1, "XGService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "too much cache msg, delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 1163
    :cond_a6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 1164
    :goto_ac
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_df

    .line 1165
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1166
    invoke-virtual {v0, v5}, Lcom/tencent/android/tpush/data/CachedMessageIntent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_db

    .line 1167
    const-string v7, "XGService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">> equal msgId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v5, Lcom/tencent/android/tpush/data/CachedMessageIntent;->msgId:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_db
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_ac

    .line 1172
    :cond_df
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_62

    .line 1187
    :catchall_e3
    move-exception v0

    monitor-exit v4
    :try_end_e5
    .catchall {:try_start_6 .. :try_end_e5} :catchall_e3

    throw v0

    .line 1184
    :cond_e6
    :try_start_e6
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    invoke-virtual {p0, p1, p2, v2}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1187
    :cond_ec
    monitor-exit v4
    :try_end_ed
    .catchall {:try_start_e6 .. :try_end_ed} :catchall_e3

    .line 1188
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V
    .registers 14

    .prologue
    .line 490
    sget-object v2, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v2

    .line 491
    if-eqz p1, :cond_82

    :try_start_5
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_82

    if-eqz p3, :cond_82

    .line 493
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ addServiceMsgId("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 498
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 499
    const/4 v0, 0x0

    move v1, v0

    :goto_44
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_79

    .line 500
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 501
    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iget-wide v8, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_75

    .line 502
    const-string v5, "XGService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> equal msgId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_44

    .line 507
    :cond_79
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 508
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 511
    :cond_82
    monitor-exit v2

    .line 512
    return-void

    .line 511
    :catchall_84
    move-exception v0

    monitor-exit v2
    :try_end_86
    .catchall {:try_start_5 .. :try_end_86} :catchall_84

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/PushClickEntity;)V
    .registers 14

    .prologue
    .line 778
    sget-object v2, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v2

    .line 779
    if-eqz p1, :cond_82

    :try_start_5
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_82

    if-eqz p3, :cond_82

    .line 781
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ addClickedMsgId("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 786
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 787
    const/4 v0, 0x0

    move v1, v0

    :goto_44
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_79

    .line 788
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/PushClickEntity;

    .line 789
    iget-wide v6, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    iget-wide v8, p3, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_75

    .line 790
    const-string v5, "XGService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> equal msgId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p3, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_44

    .line 795
    :cond_79
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 796
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 799
    :cond_82
    monitor-exit v2

    .line 800
    return-void

    .line 799
    :catchall_84
    move-exception v0

    monitor-exit v2
    :try_end_86
    .catchall {:try_start_5 .. :try_end_86} :catchall_84

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 1712
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1713
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 1731
    :cond_f
    :goto_f
    return-void

    .line 1715
    :pswitch_10
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_f

    .line 1728
    :catch_14
    move-exception v0

    .line 1729
    const-string v1, "XGService"

    const-string v2, "onCrtlMsgHandle"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 1718
    :pswitch_1d
    :try_start_1d
    const-string v1, "pushIdList"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1719
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1720
    array-length v2, v1

    const/4 v0, 0x0

    :goto_2d
    if-ge v0, v2, :cond_f

    aget-object v3, v1, v0

    .line 1721
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3c} :catch_14

    .line 1720
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1713
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_10
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8

    .prologue
    .line 516
    sget-object v1, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v1

    .line 517
    if-eqz p1, :cond_42

    if-eqz p3, :cond_42

    .line 518
    :try_start_7
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ updateServiceMsgId(current pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",remote pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v0, ".tpns.msg.id.service"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 525
    :cond_42
    monitor-exit v1

    .line 526
    return-void

    .line 525
    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 15

    .prologue
    .line 359
    sget-object v5, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v5

    .line 360
    if-eqz p1, :cond_9f

    if-eqz p2, :cond_9f

    :try_start_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9f

    .line 361
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ deleteServiceMsgIdBatch("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_c3

    .line 364
    :try_start_39
    const-string v0, "all"

    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9f

    .line 367
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 369
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_50
    :goto_50
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 370
    iget-object v1, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 372
    if-nez v1, :cond_c8

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 374
    iget-object v2, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 376
    :goto_71
    const/4 v3, 0x1

    .line 377
    const/4 v1, 0x0

    move v4, v1

    :goto_74
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_c6

    .line 378
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    .line 379
    iget-wide v8, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iget-wide v10, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_a1

    .line 380
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 381
    const/4 v1, 0x0

    .line 385
    :goto_8c
    if-eqz v1, :cond_50

    .line 386
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_96} :catch_97
    .catchall {:try_start_39 .. :try_end_96} :catchall_c3

    goto :goto_50

    .line 394
    :catch_97
    move-exception v0

    .line 395
    :try_start_98
    const-string v1, "XGService"

    const-string v2, "+++ clear msg id exception"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    :cond_9f
    monitor-exit v5
    :try_end_a0
    .catchall {:try_start_98 .. :try_end_a0} :catchall_c3

    .line 400
    return-void

    .line 377
    :cond_a1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_74

    .line 390
    :cond_a5
    :try_start_a5
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ad
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_c2} :catch_97
    .catchall {:try_start_a5 .. :try_end_c2} :catchall_c3

    goto :goto_ad

    .line 399
    :catchall_c3
    move-exception v0

    :try_start_c4
    monitor-exit v5
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v0

    :cond_c6
    move v1, v3

    goto :goto_8c

    :cond_c8
    move-object v2, v1

    goto :goto_71
.end method

.method public a(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 12

    .prologue
    .line 1289
    sget-object v4, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v4

    .line 1290
    if-eqz p1, :cond_ad

    if-eqz p2, :cond_ad

    :try_start_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ad

    .line 1291
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ deleteCachedMsgIntent(current pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_fa

    .line 1296
    :try_start_39
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    if-eqz p3, :cond_ad

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_ad

    .line 1298
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> before cached msg list size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1302
    const/4 v0, 0x0

    move v3, v0

    :goto_69
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_b3

    .line 1303
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1304
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_79
    :goto_79
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1305
    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/data/CachedMessageIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 1306
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    iget-object v2, v1, Lcom/tencent/android/tpush/data/CachedMessageIntent;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1309
    if-nez v2, :cond_9d

    .line 1310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    :cond_9d
    iget-object v1, v1, Lcom/tencent/android/tpush/data/CachedMessageIntent;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_a2} :catch_a3
    .catchall {:try_start_39 .. :try_end_a2} :catchall_fa

    goto :goto_79

    .line 1334
    :catch_a3
    move-exception v0

    .line 1335
    :try_start_a4
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    :cond_ad
    monitor-exit v4
    :try_end_ae
    .catchall {:try_start_a4 .. :try_end_ae} :catchall_fa

    .line 1339
    return-void

    .line 1302
    :cond_af
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_69

    .line 1316
    :cond_b3
    :try_start_b3
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1317
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> end cached msg list size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1321
    iget-object v1, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1323
    if-nez v1, :cond_f1

    .line 1324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    :cond_f1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    iget-object v0, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_f9} :catch_a3
    .catchall {:try_start_b3 .. :try_end_f9} :catchall_fa

    goto :goto_d6

    .line 1338
    :catchall_fa
    move-exception v0

    :try_start_fb
    monitor-exit v4
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v0

    .line 1329
    :cond_fd
    :try_start_fd
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_105
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1330
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_11a} :catch_a3
    .catchall {:try_start_fd .. :try_end_11a} :catchall_fa

    goto :goto_105
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 1875
    const-string v0, "XGService"

    const-string v1, "@@ SendBroadcastByRPC()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/b/i;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/service/b/i;-><init>(Lcom/tencent/android/tpush/service/b/a;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    .line 1929
    return-void
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;)V
    .registers 8

    .prologue
    .line 1734
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ ctrlMsg("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-object v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    .line 1736
    iget-wide v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_38

    .line 1737
    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/b;

    move-result-object v1

    .line 1739
    if-eqz v1, :cond_38

    iget-object v2, v1, Lcom/tencent/android/tpush/data/b;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1741
    iget-object v0, v1, Lcom/tencent/android/tpush/data/b;->d:Ljava/lang/String;

    .line 1744
    :cond_38
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->content:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 1570
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ sendBroadcast("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1573
    invoke-static {p1}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-static {p1}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b8

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-nez v1, :cond_b8

    .line 1576
    :cond_53
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1577
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".PUSH_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1580
    if-eqz v0, :cond_7c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_9c

    .line 1581
    :cond_7c
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> send message intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1608
    :cond_9b
    :goto_9b
    return-void

    .line 1585
    :cond_9c
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> send rpc message intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p0, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Intent;)V

    goto :goto_9b

    .line 1593
    :cond_b8
    invoke-static {p1}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9b

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_9b

    .line 1595
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".PUSH_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1598
    if-eqz v0, :cond_f8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_118

    .line 1599
    :cond_f8
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> send message intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9b

    .line 1603
    :cond_118
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> send rpc message intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    invoke-virtual {p0, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Intent;)V

    goto/16 :goto_9b
.end method

.method public a(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V
    .registers 5

    .prologue
    .line 1707
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/android/tpush/service/b/a;->b(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V

    .line 1708
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 6

    .prologue
    .line 714
    const/4 v0, 0x0

    .line 715
    if-eqz p1, :cond_57

    .line 716
    const-string v1, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ getAckedMsgIdList("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 719
    if-eqz v2, :cond_57

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_57

    .line 720
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 721
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 722
    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3a

    .line 725
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3a

    :cond_56
    move-object v0, v1

    .line 730
    :cond_57
    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    .prologue
    .line 1120
    const/4 v1, 0x0

    .line 1121
    if-eqz p1, :cond_66

    :try_start_3
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 1122
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ getCachedMsgIntentListByPkgName(current pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",remote pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v0, ".tpns.msg.id.cached"

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1128
    if-eqz v0, :cond_66

    .line 1129
    check-cast v0, Ljava/util/ArrayList;

    .line 1131
    :goto_3f
    const-string v1, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> cachedMsgIdList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    if-nez v0, :cond_5e

    .line 1134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_5e} :catch_5f

    .line 1139
    :cond_5e
    :goto_5e
    return-object v0

    .line 1138
    :catch_5f
    move-exception v0

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5e

    :cond_66
    move-object v0, v1

    goto :goto_3f
.end method

.method public b(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 11

    .prologue
    .line 824
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ getAckedReqMsgIdList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const/4 v0, 0x0

    .line 827
    if-eqz p2, :cond_fc

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_fc

    .line 828
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 829
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 830
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;-><init>()V

    .line 831
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    .line 832
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    .line 833
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->apn:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->apn:B

    .line 834
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->isp:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->isp:B

    .line 835
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->host:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->locip:J

    .line 836
    iget v4, v0, Lcom/tencent/android/tpush/data/MessageId;->port:I

    iput v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->locport:I

    .line 837
    iget-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pact:B

    iput-byte v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->pack:B

    .line 838
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pushTime:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timeUs:J

    .line 839
    iget-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    invoke-static {p1, v4, v5}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getQua(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->qua:Ljava/lang/String;

    .line 840
    iget-object v4, v0, Lcom/tencent/android/tpush/data/MessageId;->serviceHost:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->serviceHost:Ljava/lang/String;

    .line 841
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->confirmMs:J

    .line 842
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->busiMsgId:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->broadcastId:J

    .line 843
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->timestamp:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timestamp:J

    .line 844
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->type:J

    .line 845
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->receiveTime:J

    .line 847
    const-string v4, "confirmMs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++ getAckedReqMsgIdList @msgId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @accId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @timeUs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timeUs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @confirmMs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->confirmMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @recTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @msgType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " @broadcastId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->broadcastId:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/android/tpush/logging/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-le v0, v3, :cond_34

    .line 860
    :goto_fa
    return-object v1

    :cond_fb
    move-object v0, v1

    :cond_fc
    move-object v1, v0

    goto :goto_fa
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21

    .prologue
    .line 227
    if-eqz p1, :cond_8c

    if-eqz p2, :cond_8c

    .line 228
    const-string v2, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@ msgClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "packName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 233
    const-string v2, "msgId"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 234
    const-string v2, "accId"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 235
    const-string v2, "busiMsgId"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 237
    const-string v2, "timestamps"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 239
    const-string v2, "clickTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 241
    const-string v2, "action"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 243
    new-instance v3, Lcom/tencent/android/tpush/data/PushClickEntity;

    const-wide/16 v13, 0x1

    invoke-direct/range {v3 .. v17}, Lcom/tencent/android/tpush/data/PushClickEntity;-><init>(JJJJLjava/lang/String;JJI)V

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v3}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/PushClickEntity;)V

    .line 248
    invoke-virtual/range {p0 .. p2}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 250
    :cond_8c
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 16

    .prologue
    .line 1257
    sget-object v2, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v2

    .line 1258
    if-eqz p1, :cond_c5

    .line 1259
    :try_start_5
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ deleteCachedMsgIntentByPkgName(current pkg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",remote pkg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1265
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@ deleteCachedMsgIntentByPkgName(current pkg:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",remote pkg:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    if-eqz v3, :cond_c2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c2

    .line 1270
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    const/4 v0, 0x0

    move v1, v0

    :goto_8c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_bf

    .line 1272
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1273
    iget-wide v6, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->msgId:J

    cmp-long v5, v6, p3

    if-nez v5, :cond_bb

    .line 1274
    const-string v5, "XGService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> equal msgId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->msgId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    :cond_bb
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8c

    .line 1279
    :cond_bf
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1281
    :cond_c2
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1283
    :cond_c5
    monitor-exit v2

    .line 1284
    return-void

    .line 1283
    :catchall_c7
    move-exception v0

    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_5 .. :try_end_c9} :catchall_c7

    throw v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V
    .registers 12

    .prologue
    .line 1401
    sget-object v3, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v3

    .line 1402
    if-eqz p1, :cond_54

    :try_start_5
    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    if-eqz p3, :cond_54

    .line 1404
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ addMsgId(current pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remote pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1409
    if-nez v1, :cond_56

    .line 1410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1420
    :goto_4e
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1423
    :cond_54
    monitor-exit v3

    .line 1424
    return-void

    .line 1412
    :cond_56
    const/4 v0, 0x0

    move v2, v0

    :goto_58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_78

    .line 1413
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 1414
    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iget-wide v6, p3, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_71

    .line 1415
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v0, v1

    .line 1416
    goto :goto_4e

    .line 1412
    :cond_71
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_58

    .line 1423
    :catchall_75
    move-exception v0

    monitor-exit v3
    :try_end_77
    .catchall {:try_start_5 .. :try_end_77} :catchall_75

    throw v0

    :cond_78
    move-object v0, v1

    goto :goto_4e
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8

    .prologue
    .line 804
    sget-object v1, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v1

    .line 805
    if-eqz p1, :cond_42

    if-eqz p3, :cond_42

    .line 806
    :try_start_7
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ updateClickedMsgId(current pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",remote pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v0, ".tpns.msg.id.clicked"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 813
    :cond_42
    monitor-exit v1

    .line 814
    return-void

    .line 813
    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public b(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 15

    .prologue
    .line 553
    sget-object v5, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v5

    .line 554
    if-eqz p1, :cond_9d

    if-eqz p2, :cond_9d

    :try_start_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9d

    .line 555
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ deleteClickedMsgIdBatch("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_c1

    .line 558
    :try_start_39
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_9d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9d

    .line 560
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 562
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4e
    :goto_4e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/PushClickEntity;

    .line 563
    iget-object v1, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 565
    if-nez v1, :cond_c6

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 567
    iget-object v2, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 569
    :goto_6f
    const/4 v3, 0x1

    .line 570
    const/4 v1, 0x0

    move v4, v1

    :goto_72
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_c4

    .line 571
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;

    .line 572
    iget-wide v8, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->msgId:J

    iget-wide v10, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->msgId:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_9f

    .line 573
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    const/4 v1, 0x0

    .line 578
    :goto_8a
    if-eqz v1, :cond_4e

    .line 579
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v0, v0, Lcom/tencent/android/tpush/data/PushClickEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_94} :catch_95
    .catchall {:try_start_39 .. :try_end_94} :catchall_c1

    goto :goto_4e

    .line 587
    :catch_95
    move-exception v0

    .line 588
    :try_start_96
    const-string v1, "XGService"

    const-string v2, "+++ clear msg id exception"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 592
    :cond_9d
    monitor-exit v5
    :try_end_9e
    .catchall {:try_start_96 .. :try_end_9e} :catchall_c1

    .line 593
    return-void

    .line 570
    :cond_9f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_72

    .line 583
    :cond_a3
    :try_start_a3
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 584
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_c0} :catch_95
    .catchall {:try_start_a3 .. :try_end_c0} :catchall_c1

    goto :goto_ab

    .line 592
    :catchall_c1
    move-exception v0

    :try_start_c2
    monitor-exit v5
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    throw v0

    :cond_c4
    move v1, v3

    goto :goto_8a

    :cond_c6
    move-object v2, v1

    goto :goto_6f
.end method

.method public b(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V
    .registers 21

    .prologue
    .line 1755
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ messageDistribute("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1a0

    if-eqz p1, :cond_1a0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1a0

    .line 1759
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;

    .line 1760
    const-string v5, "XGService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@ message distribute, accid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",busiId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",pkg="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",msgId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",type="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",timestamp="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",multi="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->multiPkg:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",date="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->date:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",serverTime="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",ttl="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v5, p0

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;JLcom/tencent/android/tpush/service/channel/a;)V

    .line 1769
    iget-object v5, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->appPkgName:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fa

    .line 1770
    const-string v5, "XGService"

    const-string v6, ">> messageDistribute, msg.appPkgName is null!"

    invoke-static {v5, v6}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4a

    .line 1775
    :cond_fa
    iget-wide v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    const-wide/16 v10, 0x3

    cmp-long v5, v8, v10

    if-nez v5, :cond_107

    .line 1776
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tencent/android/tpush/service/b/a;->a(Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;)V

    .line 1782
    :cond_107
    iget-wide v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_195

    .line 1783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 1784
    iget-wide v10, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->serverTime:J

    sub-long v10, v8, v10

    .line 1785
    sub-long v12, v8, v10

    iget-wide v14, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    sub-long/2addr v12, v14

    .line 1786
    const-string v5, "XGService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "messageDistribute check server time, now="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",diffSec(client-server)="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",reviseMaxTimeoutSec="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",msg.ttl="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    iget-wide v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-ltz v5, :cond_195

    iget v5, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    if-lez v5, :cond_195

    iget v5, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    int-to-long v8, v5

    cmp-long v5, v8, v12

    if-gez v5, :cond_195

    .line 1795
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageDistribute check server time failed, msg discarded cause msg is timeout, msg.ttl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->ttl:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<reviseMaxTimeoutSec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1799
    const-string v6, "XGService"

    invoke-static {v6, v5}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const-string v6, "XGService"

    invoke-static {v6, v5}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4a

    .line 1804
    :cond_195
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/tencent/android/tpush/service/b/a;->a(Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;JLcom/tencent/android/tpush/service/channel/a;)V

    goto/16 :goto_4a

    .line 1808
    :cond_1a0
    invoke-static/range {p1 .. p1}, Lcom/tencent/android/tpush/service/c/a;->a(Ljava/util/ArrayList;)V

    .line 1809
    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 6

    .prologue
    .line 734
    const/4 v0, 0x0

    .line 735
    if-eqz p1, :cond_57

    .line 736
    const-string v1, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ getClickedMsgIdList("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 739
    if-eqz v2, :cond_57

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_57

    .line 740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 741
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 742
    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 744
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3a

    .line 745
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3a

    :cond_56
    move-object v0, v1

    .line 750
    :cond_57
    return-object v0
.end method

.method public c(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 634
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ requestClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isClickedAcking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/android/tpush/service/b/a;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    sget-boolean v0, Lcom/tencent/android/tpush/service/b/a;->g:Z

    if-eqz v0, :cond_3d

    .line 705
    :goto_3c
    return-void

    .line 641
    :cond_3d
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 642
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_59

    .line 643
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/android/tpush/service/b/a;->g:Z

    .line 648
    invoke-static {}, Lcom/tencent/android/tpush/service/o;->a()Lcom/tencent/android/tpush/service/o;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/b/f;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/tencent/android/tpush/service/b/f;-><init>(Lcom/tencent/android/tpush/service/b/a;Ljava/util/ArrayList;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/service/o;->b(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/o;)V

    goto :goto_3c

    .line 645
    :cond_59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/android/tpush/service/b/a;->g:Z

    goto :goto_3c
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1206
    sget-object v1, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v1

    .line 1207
    if-eqz p1, :cond_39

    .line 1208
    :try_start_5
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ deleteAllCachedMsgIntentByPkgName(current pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",remote pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1215
    :cond_39
    monitor-exit v1

    .line 1216
    return-void

    .line 1215
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8

    .prologue
    .line 930
    sget-object v1, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v1

    .line 931
    if-eqz p1, :cond_42

    if-eqz p3, :cond_42

    .line 932
    :try_start_7
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ updateMsgId(current pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",remote pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string v0, ".tpns.msg.id"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 937
    :cond_42
    monitor-exit v1

    .line 938
    return-void

    .line 937
    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public c(Landroid/content/Context;Ljava/util/List;)V
    .registers 15

    .prologue
    .line 1351
    sget-object v5, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v5

    .line 1352
    if-eqz p1, :cond_b6

    if-eqz p2, :cond_b6

    :try_start_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b6

    .line 1353
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ deleteMsgIdBatch("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_da

    .line 1356
    :try_start_39
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1357
    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b6

    .line 1358
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1360
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4e
    :goto_4e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 1361
    iget-object v1, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1363
    if-nez v1, :cond_df

    .line 1364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    iget-object v2, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1367
    :goto_6f
    const/4 v3, 0x1

    .line 1368
    const/4 v1, 0x0

    move v4, v1

    :goto_72
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_dd

    .line 1369
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    .line 1370
    iget-wide v8, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    iget-wide v10, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_b8

    .line 1371
    const-string v1, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> deleteMsgId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const/4 v1, 0x0

    .line 1377
    :goto_a1
    if-eqz v1, :cond_4e

    .line 1378
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    iget-object v0, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_ab} :catch_ac
    .catchall {:try_start_39 .. :try_end_ab} :catchall_da

    goto :goto_4e

    .line 1386
    :catch_ac
    move-exception v0

    .line 1387
    :try_start_ad
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    :cond_b6
    monitor-exit v5
    :try_end_b7
    .catchall {:try_start_ad .. :try_end_b7} :catchall_da

    .line 1391
    return-void

    .line 1368
    :cond_b8
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_72

    .line 1382
    :cond_bc
    :try_start_bc
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1383
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_d9} :catch_ac
    .catchall {:try_start_bc .. :try_end_d9} :catchall_da

    goto :goto_c4

    .line 1390
    :catchall_da
    move-exception v0

    :try_start_db
    monitor-exit v5
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    throw v0

    :cond_dd
    move v1, v3

    goto :goto_a1

    :cond_df
    move-object v2, v1

    goto :goto_6f
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 10

    .prologue
    .line 1435
    if-eqz p1, :cond_6b

    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_6b

    .line 1436
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ isMsgAcked(current pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remote pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1440
    if-eqz v0, :cond_6b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6b

    .line 1441
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/MessageId;

    .line 1442
    iget-wide v2, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_54

    .line 1443
    invoke-virtual {v0}, Lcom/tencent/android/tpush/data/MessageId;->a()Z

    move-result v0

    .line 1448
    :goto_6a
    return v0

    :cond_6b
    const/4 v0, 0x0

    goto :goto_6a
.end method

.method public declared-synchronized d(Landroid/content/Context;)V
    .registers 16

    .prologue
    const-wide/16 v12, 0x0

    .line 1014
    monitor-enter p0

    if-nez p1, :cond_e

    .line 1015
    :try_start_5
    const-string v0, "XGService"

    const-string v1, "clearLocalMsg context==null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_7c

    .line 1045
    :cond_c
    monitor-exit p0

    return-void

    .line 1018
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1019
    invoke-virtual {p0, p1, v2}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1020
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 1021
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    const/4 v0, 0x0

    move v1, v0

    :goto_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 1023
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_7c

    .line 1025
    :try_start_31
    iget-object v5, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->intent:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1026
    invoke-static {v5}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1022
    :goto_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 1028
    :cond_41
    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 1030
    const-string v6, "msgId"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v6, v6, v12

    if-gez v6, :cond_75

    .line 1031
    const-string v6, "Constants.ServiceLogTag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">> clearLocalMsg msgId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "msgId"

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_75} :catch_7f
    .catchall {:try_start_31 .. :try_end_75} :catchall_7c

    .line 1041
    :cond_75
    :goto_75
    :try_start_75
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1042
    invoke-virtual {p0, p1, v2, v3}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_7b
    .catchall {:try_start_75 .. :try_end_7b} :catchall_7c

    goto :goto_3d

    .line 1014
    :catchall_7c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1038
    :catch_7f
    move-exception v0

    .line 1039
    :try_start_80
    const-string v5, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_7c

    goto :goto_75
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8

    .prologue
    .line 1192
    sget-object v1, Lcom/tencent/android/tpush/service/b/a;->c:[B

    monitor-enter v1

    .line 1193
    if-eqz p1, :cond_42

    if-eqz p3, :cond_42

    .line 1194
    :try_start_7
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ updateCachedMsgIntent(current pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",remote pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v0, ".tpns.msg.id.cached"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1201
    :cond_42
    monitor-exit v1

    .line 1202
    return-void

    .line 1201
    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 10

    .prologue
    .line 1460
    if-eqz p1, :cond_92

    invoke-static {p2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 1461
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ isMsgCached(current pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remote pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1466
    if-eqz v0, :cond_92

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_92

    .line 1467
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 1468
    iget-wide v2, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->msgId:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_4e

    iget-object v0, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1469
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> cached msgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const/4 v0, 0x1

    .line 1476
    :goto_91
    return v0

    :cond_92
    const/4 v0, 0x0

    goto :goto_91
.end method

.method public e(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8

    .prologue
    .line 1093
    const/4 v0, 0x0

    .line 1094
    if-eqz p1, :cond_85

    .line 1095
    const-string v1, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ getCachedMsgIntentList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1098
    if-eqz v2, :cond_85

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_85

    .line 1099
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> getCachedMsgIntentList apps : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_50
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1103
    const-string v3, "XGService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> getCachedMsgIntentList app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1107
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_50

    .line 1108
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_50

    :cond_84
    move-object v0, v1

    .line 1113
    :cond_85
    return-object v0
.end method
