.class public Lcom/yyjia/sdk/center/a;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final g:[I

.field private static final h:[Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:[Landroid/widget/Button;

.field private c:Landroid/content/Context;

.field private d:Lcom/yyjia/sdk/center/GMcenter;

.field private e:F

.field private f:Lcom/yyjia/sdk/listener/ActionBarlistener;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x5

    new-array v0, v3, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/yyjia/sdk/center/a;->g:[I

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "l"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "f"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "m"

    aput-object v2, v0, v1

    const-string v1, "p"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yyjia/sdk/center/a;->h:[Ljava/lang/String;

    return-void

    :array_30
    .array-data 4
        0x7f090041
        0x7f090042
        0x7f090043
        0x7f090044
        0x7f090045
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yyjia/sdk/listener/ActionBarlistener;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/Button;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yyjia/sdk/center/a;->a:Landroid/widget/Button;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yyjia/sdk/center/a;->a:Landroid/widget/Button;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yyjia/sdk/center/a;->a:Landroid/widget/Button;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/yyjia/sdk/center/a;->a:Landroid/widget/Button;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/yyjia/sdk/center/a;->a:Landroid/widget/Button;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/yyjia/sdk/center/a;->a:Landroid/widget/Button;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/yyjia/sdk/center/a;->a:Landroid/widget/Button;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    iput-object p2, p0, Lcom/yyjia/sdk/center/a;->f:Lcom/yyjia/sdk/listener/ActionBarlistener;

    iput-object p1, p0, Lcom/yyjia/sdk/center/a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/center/GMcenter;->getInstance(Landroid/content/Context;)Lcom/yyjia/sdk/center/GMcenter;

    move-result-object v0

    iput-object v0, p0, Lcom/yyjia/sdk/center/a;->d:Lcom/yyjia/sdk/center/GMcenter;

    invoke-static {}, Lcom/yyjia/sdk/e/ad;->a()Lcom/yyjia/sdk/e/ad;

    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/yyjia/sdk/e/ad;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/yyjia/sdk/center/a;->e:F

    invoke-direct {p0}, Lcom/yyjia/sdk/center/a;->a()V

    return-void
.end method

.method private a()V
    .registers 10

    const/4 v1, -0x1

    const/high16 v8, 0x42a00000

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/yyjia/sdk/center/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, ""

    invoke-virtual {p0, v2}, Lcom/yyjia/sdk/center/a;->setOrientation(I)V

    move v1, v2

    :goto_12
    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    array-length v3, v3

    if-lt v1, v3, :cond_18

    return-void

    :cond_18
    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    new-instance v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/yyjia/sdk/center/a;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    aget-object v3, v3, v1

    sget-object v4, Lcom/yyjia/sdk/center/a;->h:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    aget-object v3, v3, v1

    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    aget-object v3, v3, v1

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setGravity(I)V

    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    aget-object v3, v3, v1

    const-string v4, "#444444"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    sget-object v3, Lcom/yyjia/sdk/center/a;->h:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "l"

    if-ne v3, v4, :cond_b7

    const-string v0, "logo"

    :cond_65
    :goto_65
    const-string v3, ""

    if-ne v0, v3, :cond_6b

    const-string v0, "logo"

    :cond_6b
    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/yyjia/sdk/center/a;->c:Landroid/content/Context;

    const-string v5, "drawable"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "yyjia_sdk_toolbaricon_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/yyjia/sdk/center/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    sget-object v3, Lcom/yyjia/sdk/center/a;->h:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "l"

    if-ne v3, v4, :cond_fb

    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    aget-object v3, v3, v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yyjia/sdk/center/a;->e:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iget v6, p0, Lcom/yyjia/sdk/center/a;->e:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a5
    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/yyjia/sdk/center/a;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    :cond_b7
    sget-object v3, Lcom/yyjia/sdk/center/a;->h:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "f"

    if-ne v3, v4, :cond_c2

    const-string v0, "left"

    goto :goto_65

    :cond_c2
    sget-object v3, Lcom/yyjia/sdk/center/a;->h:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "b"

    if-ne v3, v4, :cond_cd

    const-string v0, "bbs"

    goto :goto_65

    :cond_cd
    sget-object v3, Lcom/yyjia/sdk/center/a;->h:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "a"

    if-ne v3, v4, :cond_d8

    const-string v0, "moreapp"

    goto :goto_65

    :cond_d8
    sget-object v3, Lcom/yyjia/sdk/center/a;->h:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "m"

    if-ne v3, v4, :cond_e3

    const-string v0, "manage"

    goto :goto_65

    :cond_e3
    sget-object v3, Lcom/yyjia/sdk/center/a;->h:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "p"

    if-ne v3, v4, :cond_ef

    const-string v0, "paylog"

    goto/16 :goto_65

    :cond_ef
    sget-object v3, Lcom/yyjia/sdk/center/a;->h:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "e"

    if-ne v3, v4, :cond_65

    const-string v0, "end"

    goto/16 :goto_65

    :cond_fb
    sget-object v3, Lcom/yyjia/sdk/center/a;->h:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "f"

    if-eq v3, v4, :cond_10b

    sget-object v3, Lcom/yyjia/sdk/center/a;->h:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "e"

    if-ne v3, v4, :cond_122

    :cond_10b
    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    aget-object v3, v3, v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42200000

    iget v6, p0, Lcom/yyjia/sdk/center/a;->e:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/yyjia/sdk/center/a;->e:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a5

    :cond_122
    iget-object v3, p0, Lcom/yyjia/sdk/center/a;->b:[Landroid/widget/Button;

    aget-object v3, v3, v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/yyjia/sdk/center/a;->e:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iget v6, p0, Lcom/yyjia/sdk/center/a;->e:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a5
.end method

.method private a(Lcom/yyjia/sdk/f/z;Lcom/yyjia/sdk/f/aa;Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 6

    new-instance v0, Lcom/yyjia/sdk/f/bj;

    iget-object v1, p0, Lcom/yyjia/sdk/center/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p3}, Lcom/yyjia/sdk/f/bj;-><init>(Landroid/content/Context;Lcom/yyjia/sdk/f/z;Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, -0x1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->f:Lcom/yyjia/sdk/listener/ActionBarlistener;

    invoke-interface {v0}, Lcom/yyjia/sdk/listener/ActionBarlistener;->changeBar()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v0, "onClick1"

    const-string v1, "btn_bbs_left"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->f:Lcom/yyjia/sdk/listener/ActionBarlistener;

    invoke-interface {v0}, Lcom/yyjia/sdk/listener/ActionBarlistener;->changeBar()V

    new-instance v0, Lcom/yyjia/sdk/f/cf;

    iget-object v1, p0, Lcom/yyjia/sdk/center/a;->c:Landroid/content/Context;

    const-string v2, "bbs"

    new-instance v3, Lcom/yyjia/sdk/center/b;

    invoke-direct {v3, p0}, Lcom/yyjia/sdk/center/b;-><init>(Lcom/yyjia/sdk/center/a;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/yyjia/sdk/f/cf;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_19

    :cond_3d
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v0, "onClick1"

    const-string v1, "btn_moreapp_left"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->f:Lcom/yyjia/sdk/listener/ActionBarlistener;

    invoke-interface {v0}, Lcom/yyjia/sdk/listener/ActionBarlistener;->changeBar()V

    new-instance v0, Lcom/yyjia/sdk/f/cf;

    iget-object v1, p0, Lcom/yyjia/sdk/center/a;->c:Landroid/content/Context;

    const-string v2, "moreapp"

    new-instance v3, Lcom/yyjia/sdk/center/c;

    invoke-direct {v3, p0}, Lcom/yyjia/sdk/center/c;-><init>(Lcom/yyjia/sdk/center/a;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/yyjia/sdk/f/cf;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_19

    :cond_60
    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    const-string v0, "onClick1"

    const-string v1, "btn_manage_left"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->f:Lcom/yyjia/sdk/listener/ActionBarlistener;

    invoke-interface {v0}, Lcom/yyjia/sdk/listener/ActionBarlistener;->changeBar()V

    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->d:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->getIsLogin()I

    move-result v0

    if-ne v0, v3, :cond_d1

    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->d:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->getLoginType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->d:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->getLoginType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    :cond_98
    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->d:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qq_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_b4

    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->d:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sina_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_bd

    :cond_b4
    new-instance v0, Lcom/yyjia/sdk/f/p;

    iget-object v1, p0, Lcom/yyjia/sdk/center/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yyjia/sdk/f/p;-><init>(Landroid/content/Context;)V

    goto/16 :goto_19

    :cond_bd
    new-instance v0, Lcom/yyjia/sdk/center/d;

    invoke-direct {v0, p0}, Lcom/yyjia/sdk/center/d;-><init>(Lcom/yyjia/sdk/center/a;)V

    new-instance v1, Lcom/yyjia/sdk/center/e;

    invoke-direct {v1, p0}, Lcom/yyjia/sdk/center/e;-><init>(Lcom/yyjia/sdk/center/a;)V

    new-instance v2, Lcom/yyjia/sdk/center/f;

    invoke-direct {v2, p0}, Lcom/yyjia/sdk/center/f;-><init>(Lcom/yyjia/sdk/center/a;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/yyjia/sdk/center/a;->a(Lcom/yyjia/sdk/f/z;Lcom/yyjia/sdk/f/aa;Landroid/widget/PopupWindow$OnDismissListener;)V

    goto/16 :goto_19

    :cond_d1
    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->c:Landroid/content/Context;

    const-string v1, "\u672a\u767b\u5f55"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->d:Lcom/yyjia/sdk/center/GMcenter;

    invoke-virtual {v0}, Lcom/yyjia/sdk/center/GMcenter;->checkLogin()V

    goto/16 :goto_19

    :cond_df
    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/yyjia/sdk/center/a;->f:Lcom/yyjia/sdk/listener/ActionBarlistener;

    invoke-interface {v0}, Lcom/yyjia/sdk/listener/ActionBarlistener;->changeBar()V

    new-instance v0, Lcom/yyjia/sdk/f/cf;

    iget-object v1, p0, Lcom/yyjia/sdk/center/a;->c:Landroid/content/Context;

    const-string v2, "payorder"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/yyjia/sdk/f/cf;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/PopupWindow$OnDismissListener;)V

    goto/16 :goto_19
.end method