.class public Lorg/sufficientlysecure/htmltextview/NumberSpan;
.super Ljava/lang/Object;
.source "NumberSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field private final mNumber:Ljava/lang/String;

.field private final mTextWidth:I


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;I)V
    .locals 2
    .param p1, "textPaint"    # Landroid/text/TextPaint;
    .param p2, "number"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/NumberSpan;->mNumber:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/NumberSpan;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/sufficientlysecure/htmltextview/NumberSpan;->mTextWidth:I

    .line 39
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "l"    # Landroid/text/Layout;

    .prologue
    .line 50
    instance-of v1, p8, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 51
    check-cast p8, Landroid/text/Spanned;

    .end local p8    # "text":Ljava/lang/CharSequence;
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 52
    .local v0, "spanStart":I
    if-ne v0, p9, :cond_0

    .line 53
    iget-object v1, p0, Lorg/sufficientlysecure/htmltextview/NumberSpan;->mNumber:Ljava/lang/String;

    int-to-float v2, p3

    int-to-float v3, p6

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 56
    .end local v0    # "spanStart":I
    :cond_0
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    .prologue
    .line 43
    iget v0, p0, Lorg/sufficientlysecure/htmltextview/NumberSpan;->mTextWidth:I

    return v0
.end method
