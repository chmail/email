.class public Lorg/sufficientlysecure/htmltextview/HtmlTextView;
.super Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;
.source "HtmlTextView.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "HtmlTextView"


# instance fields
.field private clickableTableSpan:Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private drawTableLinkSpan:Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private removeFromHtmlSpace:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->removeFromHtmlSpace:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->removeFromHtmlSpace:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->removeFromHtmlSpace:Z

    .line 43
    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v2, "\\A"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 128
    .local v0, "s":Ljava/util/Scanner;
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static removeHtmlBottomPadding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 138
    if-nez p0, :cond_1

    .line 139
    const/4 p0, 0x0

    .line 145
    :cond_0
    return-object p0

    .line 142
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public setClickableTableSpan(Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;)V
    .locals 0
    .param p1, "clickableTableSpan"    # Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->clickableTableSpan:Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

    .line 116
    return-void
.end method

.method public setDrawTableLinkSpan(Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;)V
    .locals 0
    .param p1, "drawTableLinkSpan"    # Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->drawTableLinkSpan:Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    .line 120
    return-void
.end method

.method public setHtml(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->setHtml(ILandroid/text/Html$ImageGetter;)V

    .line 58
    return-void
.end method

.method public setHtml(ILandroid/text/Html$ImageGetter;)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 79
    .local v0, "inputStreamText":Ljava/io/InputStream;
    invoke-static {v0}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V

    .line 80
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V

    .line 65
    return-void
.end method

.method public setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V
    .locals 2
    .param p1, "html"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    new-instance v0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;

    invoke-virtual {p0}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;-><init>(Landroid/text/TextPaint;)V

    .line 92
    .local v0, "htmlTagHandler":Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;
    iget-object v1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->clickableTableSpan:Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->setClickableTableSpan(Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;)V

    .line 93
    iget-object v1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->drawTableLinkSpan:Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->setDrawTableLinkSpan(Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;)V

    .line 95
    invoke-virtual {v0, p1}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->overrideTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-boolean v1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->removeFromHtmlSpace:Z

    if-eqz v1, :cond_0

    .line 98
    invoke-static {p1, p2, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->removeHtmlBottomPadding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    invoke-static {}, Lorg/sufficientlysecure/htmltextview/LocalLinkMovementMethod;->getInstance()Lorg/sufficientlysecure/htmltextview/LocalLinkMovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 105
    return-void

    .line 100
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRemoveFromHtmlSpace(Z)V
    .locals 0
    .param p1, "removeFromHtmlSpace"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTextView;->removeFromHtmlSpace:Z

    .line 112
    return-void
.end method
