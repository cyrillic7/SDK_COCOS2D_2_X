.class Lcom/tencent/open/b/g$5;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/g;)V
    .registers 2

    .prologue
    .line 618
    iput-object p1, p0, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 623
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    invoke-virtual {v2}, Lcom/tencent/open/b/g;->d()Landroid/os/Bundle;

    move-result-object v14

    .line 624
    if-nez v14, :cond_b

    .line 713
    :goto_a
    return-void

    .line 627
    :cond_b
    const-string v2, "openSDK_LOG.ReportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->doReportVia, params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/tencent/open/b/e;->a()I

    move-result v11

    .line 631
    const/4 v10, 0x0

    .line 632
    const/4 v3, 0x0

    .line 634
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_a3

    move-result-wide v8

    .line 635
    const-wide/16 v6, 0x0

    .line 636
    const-wide/16 v4, 0x0

    .line 637
    const/4 v2, 0x0

    .line 640
    :cond_36
    add-int/lit8 v10, v10, 0x1

    .line 642
    :try_start_38
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "http://appsupport.qq.com/cgi-bin/appstage/mstats_batch_report"

    const-string v15, "POST"

    invoke-static {v12, v13, v15, v14}, Lcom/tencent/open/utils/HttpUtils;->openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/Util$Statistic;

    move-result-object v15

    .line 644
    iget-object v12, v15, Lcom/tencent/open/utils/Util$Statistic;->response:Ljava/lang/String;

    invoke-static {v12}, Lcom/tencent/open/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_49
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_38 .. :try_end_49} :catch_b0
    .catch Ljava/net/SocketTimeoutException; {:try_start_38 .. :try_end_49} :catch_c0
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_49} :catch_cb
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_38 .. :try_end_49} :catch_d2
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_38 .. :try_end_49} :catch_e5
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_49} :catch_104
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_49} :catch_10f

    move-result-object v12

    .line 648
    :try_start_4a
    const-string v13, "ret"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_4f} :catch_ad
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4a .. :try_end_4f} :catch_b0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4a .. :try_end_4f} :catch_c0
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_4a .. :try_end_4f} :catch_d2
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_4a .. :try_end_4f} :catch_e5
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_104
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4f} :catch_10f

    move-result v12

    .line 653
    :goto_50
    if-eqz v12, :cond_5a

    :try_start_52
    iget-object v12, v15, Lcom/tencent/open/utils/Util$Statistic;->response:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5c

    .line 655
    :cond_5a
    const/4 v3, 0x1

    move v10, v11

    .line 659
    :cond_5c
    iget-wide v12, v15, Lcom/tencent/open/utils/Util$Statistic;->reqSize:J
    :try_end_5e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_52 .. :try_end_5e} :catch_b0
    .catch Ljava/net/SocketTimeoutException; {:try_start_52 .. :try_end_5e} :catch_c0
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_5e} :catch_cb
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_52 .. :try_end_5e} :catch_d2
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_52 .. :try_end_5e} :catch_e5
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5e} :catch_104
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5e} :catch_10f

    .line 660
    :try_start_5e
    iget-wide v4, v15, Lcom/tencent/open/utils/Util$Statistic;->rspSize:J
    :try_end_60
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5e .. :try_end_60} :catch_b0
    .catch Ljava/net/SocketTimeoutException; {:try_start_5e .. :try_end_60} :catch_c0
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_60} :catch_cb
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_5e .. :try_end_60} :catch_d2
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_5e .. :try_end_60} :catch_12b
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_60} :catch_104
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_60} :catch_10f

    move-wide v6, v12

    .line 698
    :goto_61
    if-lt v10, v11, :cond_36

    move v10, v2

    move v13, v3

    move-wide/from16 v16, v8

    move-wide v8, v4

    move-wide/from16 v4, v16

    .line 700
    :goto_6a
    :try_start_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    const-string v3, "mapp_apptrace_sdk"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    .line 701
    if-eqz v13, :cond_118

    .line 702
    invoke-static {}, Lcom/tencent/open/b/f;->a()Lcom/tencent/open/b/f;

    move-result-object v2

    const-string v3, "report_via"

    invoke-virtual {v2, v3}, Lcom/tencent/open/b/f;->b(Ljava/lang/String;)V

    .line 708
    :goto_80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    iget-object v2, v2, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 709
    const-string v2, "openSDK_LOG.ReportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->doReportVia, uploadSuccess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_a1} :catch_a3

    goto/16 :goto_a

    .line 710
    :catch_a3
    move-exception v2

    .line 711
    const-string v3, "openSDK_LOG.ReportManager"

    const-string v4, "-->doReportVia, exception in serial executor."

    invoke-static {v3, v4, v2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 649
    :catch_ad
    move-exception v12

    .line 650
    const/4 v12, -0x4

    goto :goto_50

    .line 662
    :catch_b0
    move-exception v2

    move v2, v10

    .line 663
    :try_start_b2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 664
    const-wide/16 v12, 0x0

    .line 665
    const-wide/16 v6, 0x0

    .line 666
    const/4 v4, -0x7

    move v10, v2

    move v2, v4

    move-wide v4, v6

    move-wide v6, v12

    .line 697
    goto :goto_61

    .line 667
    :catch_c0
    move-exception v2

    .line 668
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 669
    const-wide/16 v6, 0x0

    .line 670
    const-wide/16 v4, 0x0

    .line 671
    const/4 v2, -0x8

    .line 697
    goto :goto_61

    .line 672
    :catch_cb
    move-exception v2

    .line 673
    const-wide/16 v6, 0x0

    .line 674
    const-wide/16 v4, 0x0

    .line 675
    const/4 v2, -0x4

    .line 697
    goto :goto_61

    .line 676
    :catch_d2
    move-exception v2

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    iget-object v2, v2, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 678
    const-string v2, "openSDK_LOG.ReportManager"

    const-string v3, "doReportVia, NetworkUnavailableException."

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_e3} :catch_a3

    goto/16 :goto_a

    .line 680
    :catch_e5
    move-exception v10

    move-object/from16 v16, v10

    move v10, v3

    move-object/from16 v3, v16

    .line 682
    :goto_eb
    :try_start_eb
    invoke-virtual {v3}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v11, "http status code error:"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_fa} :catch_129

    move-result v2

    :goto_fb
    move v13, v10

    move v10, v2

    move-wide/from16 v16, v8

    move-wide v8, v4

    move-wide/from16 v4, v16

    .line 687
    goto/16 :goto_6a

    .line 688
    :catch_104
    move-exception v2

    .line 689
    const-wide/16 v6, 0x0

    .line 690
    const-wide/16 v4, 0x0

    .line 691
    :try_start_109
    invoke-static {v2}, Lcom/tencent/open/utils/HttpUtils;->getErrorCodeFromException(Ljava/io/IOException;)I

    move-result v2

    goto/16 :goto_61

    .line 692
    :catch_10f
    move-exception v2

    .line 693
    const-wide/16 v6, 0x0

    .line 694
    const-wide/16 v4, 0x0

    .line 695
    const/4 v2, -0x6

    move v10, v11

    .line 696
    goto/16 :goto_61

    .line 704
    :cond_118
    invoke-static {}, Lcom/tencent/open/b/f;->a()Lcom/tencent/open/b/f;

    move-result-object v2

    const-string v3, "report_via"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    iget-object v4, v4, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/tencent/open/b/f;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_127} :catch_a3

    goto/16 :goto_80

    .line 684
    :catch_129
    move-exception v3

    goto :goto_fb

    .line 680
    :catch_12b
    move-exception v6

    move v10, v3

    move-object v3, v6

    move-wide v6, v12

    goto :goto_eb
.end method