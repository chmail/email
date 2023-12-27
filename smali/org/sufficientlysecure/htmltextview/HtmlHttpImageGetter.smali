.class public Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;
.super Ljava/lang/Object;
.source "HtmlHttpImageGetter.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;,
        Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;
    }
.end annotation


# instance fields
.field baseUri:Ljava/net/URI;

.field private compressImage:Z

.field container:Landroid/widget/TextView;

.field matchParentWidth:Z

.field private qualityImage:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v1, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->compressImage:Z

    .line 46
    const/16 v0, 0x32

    iput v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->qualityImage:I

    .line 49
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    .line 50
    iput-boolean v1, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->matchParentWidth:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->compressImage:Z

    .line 46
    const/16 v0, 0x32

    iput v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->qualityImage:I

    .line 54
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    .line 55
    if-eqz p2, :cond_0

    .line 56
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->baseUri:Ljava/net/URI;

    .line 58
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "matchParentWidth"    # Z

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->compressImage:Z

    .line 46
    const/16 v0, 0x32

    iput v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->qualityImage:I

    .line 61
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    .line 62
    iput-boolean p3, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->matchParentWidth:Z

    .line 63
    if-eqz p2, :cond_0

    .line 64
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->baseUri:Ljava/net/URI;

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public enableCompressImage(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 69
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->enableCompressImage(ZI)V

    .line 70
    return-void
.end method

.method public enableCompressImage(ZI)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "quality"    # I

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->compressImage:Z

    .line 74
    iput p2, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->qualityImage:I

    .line 75
    return-void
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v1, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;

    invoke-direct {v1, p0}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;)V

    .line 81
    .local v1, "urlDrawable":Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;
    new-instance v0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;

    iget-object v3, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    iget-boolean v4, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->matchParentWidth:Z

    iget-boolean v5, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->compressImage:Z

    iget v6, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->qualityImage:I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;Landroid/view/View;ZZI)V

    .line 84
    .local v0, "asyncTask":Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-object v1
.end method
