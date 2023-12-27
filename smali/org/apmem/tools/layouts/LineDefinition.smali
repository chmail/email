.class Lorg/apmem/tools/layouts/LineDefinition;
.super Ljava/lang/Object;
.source "LineDefinition.java"


# instance fields
.field private lineLength:I

.field private lineStartLength:I

.field private lineStartThickness:I

.field private lineThickness:I

.field private final maxLength:I

.field private final views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apmem/tools/layouts/LineDefinition;->views:Ljava/util/List;

    .line 17
    iput v1, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineStartThickness:I

    .line 18
    iput v1, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineStartLength:I

    .line 19
    iput p1, p0, Lorg/apmem/tools/layouts/LineDefinition;->maxLength:I

    .line 20
    return-void
.end method


# virtual methods
.method public addView(ILandroid/view/View;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 29
    .local v0, "lp":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    iget-object v1, p0, Lorg/apmem/tools/layouts/LineDefinition;->views:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31
    iget v1, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineLength:I

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getSpacingLength()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineLength:I

    .line 32
    iget v1, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineThickness:I

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getThickness()I

    move-result v2

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getSpacingThickness()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineThickness:I

    .line 33
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/apmem/tools/layouts/LineDefinition;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apmem/tools/layouts/LineDefinition;->addView(ILandroid/view/View;)V

    .line 24
    return-void
.end method

.method public canFit(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 37
    .local v0, "lp":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    iget v1, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineLength:I

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getSpacingLength()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/apmem/tools/layouts/LineDefinition;->maxLength:I

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLineLength()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineLength:I

    return v0
.end method

.method public getLineStartLength()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineStartLength:I

    return v0
.end method

.method public getLineStartThickness()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineStartThickness:I

    return v0
.end method

.method public getLineThickness()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineThickness:I

    return v0
.end method

.method public getViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apmem/tools/layouts/LineDefinition;->views:Ljava/util/List;

    return-object v0
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 73
    iput p1, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineLength:I

    .line 74
    return-void
.end method

.method public setLineStartLength(I)V
    .locals 0
    .param p1, "lineStartLength"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineStartLength:I

    .line 62
    return-void
.end method

.method public setLineStartThickness(I)V
    .locals 0
    .param p1, "lineStartThickness"    # I

    .prologue
    .line 45
    iput p1, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineStartThickness:I

    .line 46
    return-void
.end method

.method public setThickness(I)V
    .locals 0
    .param p1, "thickness"    # I

    .prologue
    .line 69
    iput p1, p0, Lorg/apmem/tools/layouts/LineDefinition;->lineThickness:I

    .line 70
    return-void
.end method
