.class public final Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# instance fields
.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;->url:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .registers 4

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;->url:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .registers 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;->url:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 26
    return-void
.end method
