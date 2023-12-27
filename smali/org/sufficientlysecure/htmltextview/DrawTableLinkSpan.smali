.class public Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;
.super Landroid/text/style/ReplacementSpan;
.source "DrawTableLinkSpan.java"


# static fields
.field private static final DEFAULT_TABLE_LINK_TEXT:Ljava/lang/String; = ""

.field private static DEFAULT_TEXT_COLOR:I

.field private static DEFAULT_TEXT_SIZE:F


# instance fields
.field protected mTableLinkText:Ljava/lang/String;

.field protected mTextColor:I

.field protected mTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/high16 v0, 0x42a00000    # 80.0f

    sput v0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->DEFAULT_TEXT_SIZE:F

    .line 35
    const v0, -0xffff01

    sput v0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->DEFAULT_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    .line 38
    sget v0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->DEFAULT_TEXT_SIZE:F

    iput v0, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextSize:F

    .line 39
    sget v0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->DEFAULT_TEXT_COLOR:I

    iput v0, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextColor:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 62
    .local v0, "paint2":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget v1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget v1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object v1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    int-to-float v2, p8

    invoke-virtual {p1, v1, p5, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 68
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 54
    iget-object v1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    float-to-int v0, v1

    .line 55
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iput v1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextSize:F

    .line 56
    return v0
.end method

.method public getTableLinkText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextSize:F

    return v0
.end method

.method public newInstance()Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    invoke-direct {v0}, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;-><init>()V

    .line 45
    .local v0, "drawTableLinkSpan":Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;
    iget-object v1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->setTableLinkText(Ljava/lang/String;)V

    .line 46
    iget v1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextSize:F

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->setTextSize(F)V

    .line 47
    iget v1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextColor:I

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->setTextColor(I)V

    .line 49
    return-object v0
.end method

.method public setTableLinkText(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableLinkText"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 79
    iput p1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextColor:I

    .line 80
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 75
    iput p1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextSize:F

    .line 76
    return-void
.end method
