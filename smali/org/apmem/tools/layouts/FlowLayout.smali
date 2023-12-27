.class public Lorg/apmem/tools/layouts/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final config:Lorg/apmem/tools/layouts/LayoutConfiguration;

.field lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apmem/tools/layouts/LineDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->lines:Ljava/util/List;

    .line 29
    new-instance v0, Lorg/apmem/tools/layouts/LayoutConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apmem/tools/layouts/LayoutConfiguration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->lines:Ljava/util/List;

    .line 34
    new-instance v0, Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-direct {v0, p1, p2}, Lorg/apmem/tools/layouts/LayoutConfiguration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->lines:Ljava/util/List;

    .line 39
    new-instance v0, Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-direct {v0, p1, p2}, Lorg/apmem/tools/layouts/LayoutConfiguration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    .line 40
    return-void
.end method

.method private applyGravityToLine(Lorg/apmem/tools/layouts/LineDefinition;)V
    .locals 24
    .param p1, "line"    # Lorg/apmem/tools/layouts/LineDefinition;

    .prologue
    .line 237
    invoke-virtual/range {p1 .. p1}, Lorg/apmem/tools/layouts/LineDefinition;->getViews()Ljava/util/List;

    move-result-object v19

    .line 238
    .local v19, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v18

    .line 239
    .local v18, "viewCount":I
    if-gtz v18, :cond_1

    .line 285
    :cond_0
    return-void

    .line 243
    :cond_1
    const/16 v17, 0x0

    .line 244
    .local v17, "totalWeight":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    .line 245
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 246
    .local v15, "prev":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 247
    .local v14, "plp":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apmem/tools/layouts/FlowLayout;->getWeight(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)F

    move-result v21

    add-float v17, v17, v21

    .line 244
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 250
    .end local v14    # "plp":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    .end local v15    # "prev":Landroid/view/View;
    :cond_2
    add-int/lit8 v21, v18, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 251
    .local v11, "lastChild":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 252
    .local v12, "lastChildLayoutParams":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lorg/apmem/tools/layouts/LineDefinition;->getLineLength()I

    move-result v21

    invoke-virtual {v12}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getLength()I

    move-result v22

    invoke-virtual {v12}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getSpacingLength()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual {v12}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getInlineStartLength()I

    move-result v23

    add-int v22, v22, v23

    sub-int v6, v21, v22

    .line 253
    .local v6, "excessLength":I
    const/4 v7, 0x0

    .line 254
    .local v7, "excessOffset":I
    const/4 v10, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    .line 255
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 256
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 258
    .local v13, "layoutParams":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apmem/tools/layouts/FlowLayout;->getWeight(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)F

    move-result v20

    .line 259
    .local v20, "weight":F
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apmem/tools/layouts/FlowLayout;->getGravity(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v9

    .line 261
    .local v9, "gravity":I
    const/16 v21, 0x0

    cmpl-float v21, v17, v21

    if-nez v21, :cond_3

    .line 262
    div-int v8, v6, v18

    .line 267
    .local v8, "extraLength":I
    :goto_2
    invoke-virtual {v13}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getLength()I

    move-result v21

    invoke-virtual {v13}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getSpacingLength()I

    move-result v22

    add-int v3, v21, v22

    .line 268
    .local v3, "childLength":I
    invoke-virtual {v13}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getThickness()I

    move-result v21

    invoke-virtual {v13}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getSpacingThickness()I

    move-result v22

    add-int v4, v21, v22

    .line 270
    .local v4, "childThickness":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 271
    .local v5, "container":Landroid/graphics/Rect;
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 272
    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 273
    add-int v21, v3, v8

    add-int v21, v21, v7

    move/from16 v0, v21

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 274
    invoke-virtual/range {p1 .. p1}, Lorg/apmem/tools/layouts/LineDefinition;->getLineThickness()I

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 276
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 277
    .local v16, "result":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    invoke-static {v9, v3, v4, v5, v0}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 279
    add-int/2addr v7, v8

    .line 280
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    invoke-virtual {v13}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getInlineStartLength()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->setInlineStartLength(I)V

    .line 281
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->setInlineStartThickness(I)V

    .line 282
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-virtual {v13}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getSpacingLength()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->setLength(I)V

    .line 283
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v21

    invoke-virtual {v13}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getSpacingThickness()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->setThickness(I)V

    .line 254
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 264
    .end local v3    # "childLength":I
    .end local v4    # "childThickness":I
    .end local v5    # "container":Landroid/graphics/Rect;
    .end local v8    # "extraLength":I
    .end local v16    # "result":Landroid/graphics/Rect;
    :cond_3
    int-to-float v0, v6

    move/from16 v21, v0

    mul-float v21, v21, v20

    div-float v21, v21, v17

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v8

    .restart local v8    # "extraLength":I
    goto/16 :goto_2
.end method

.method private applyGravityToLines(Ljava/util/List;II)V
    .locals 17
    .param p2, "realControlLength"    # I
    .param p3, "realControlThickness"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apmem/tools/layouts/LineDefinition;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/apmem/tools/layouts/LineDefinition;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 197
    .local v11, "linesCount":I
    if-gtz v11, :cond_1

    .line 234
    :cond_0
    return-void

    .line 201
    :cond_1
    move v13, v11

    .line 202
    .local v13, "totalWeight":I
    add-int/lit8 v15, v11, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apmem/tools/layouts/LineDefinition;

    .line 203
    .local v10, "lastLine":Lorg/apmem/tools/layouts/LineDefinition;
    invoke-virtual {v10}, Lorg/apmem/tools/layouts/LineDefinition;->getLineThickness()I

    move-result v15

    invoke-virtual {v10}, Lorg/apmem/tools/layouts/LineDefinition;->getLineStartThickness()I

    move-result v16

    add-int v15, v15, v16

    sub-int v6, p3, v15

    .line 205
    .local v6, "excessThickness":I
    if-gez v6, :cond_2

    .line 206
    const/4 v6, 0x0

    .line 209
    :cond_2
    const/4 v5, 0x0

    .line 210
    .local v5, "excessOffset":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 211
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apmem/tools/layouts/LineDefinition;

    .line 212
    .local v1, "child":Lorg/apmem/tools/layouts/LineDefinition;
    const/4 v14, 0x1

    .line 213
    .local v14, "weight":I
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apmem/tools/layouts/FlowLayout;->getGravity(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v8

    .line 214
    .local v8, "gravity":I
    mul-int v15, v6, v14

    div-int/2addr v15, v13

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 216
    .local v7, "extraThickness":I
    invoke-virtual {v1}, Lorg/apmem/tools/layouts/LineDefinition;->getLineLength()I

    move-result v2

    .line 217
    .local v2, "childLength":I
    invoke-virtual {v1}, Lorg/apmem/tools/layouts/LineDefinition;->getLineThickness()I

    move-result v3

    .line 219
    .local v3, "childThickness":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 220
    .local v4, "container":Landroid/graphics/Rect;
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 221
    const/4 v15, 0x0

    iput v15, v4, Landroid/graphics/Rect;->left:I

    .line 222
    move/from16 v0, p2

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 223
    add-int v15, v3, v7

    add-int/2addr v15, v5

    iput v15, v4, Landroid/graphics/Rect;->bottom:I

    .line 225
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 226
    .local v12, "result":Landroid/graphics/Rect;
    invoke-static {v8, v2, v3, v4, v12}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 228
    add-int/2addr v5, v7

    .line 229
    invoke-virtual {v1}, Lorg/apmem/tools/layouts/LineDefinition;->getLineStartLength()I

    move-result v15

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v1, v15}, Lorg/apmem/tools/layouts/LineDefinition;->setLineStartLength(I)V

    .line 230
    invoke-virtual {v1}, Lorg/apmem/tools/layouts/LineDefinition;->getLineStartThickness()I

    move-result v15

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v1, v15}, Lorg/apmem/tools/layouts/LineDefinition;->setLineStartThickness(I)V

    .line 231
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v1, v15}, Lorg/apmem/tools/layouts/LineDefinition;->setLength(I)V

    .line 232
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v1, v15}, Lorg/apmem/tools/layouts/LineDefinition;->setThickness(I)V

    .line 210
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method private applyPositionsToViews(Lorg/apmem/tools/layouts/LineDefinition;)V
    .locals 9
    .param p1, "line"    # Lorg/apmem/tools/layouts/LineDefinition;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 170
    invoke-virtual {p1}, Lorg/apmem/tools/layouts/LineDefinition;->getViews()Ljava/util/List;

    move-result-object v2

    .line 171
    .local v2, "childViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 172
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 173
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 174
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 175
    .local v4, "layoutParams":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    iget-object v5, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v5}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v5

    if-nez v5, :cond_0

    .line 176
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p1}, Lorg/apmem/tools/layouts/LineDefinition;->getLineStartLength()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getInlineStartLength()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p1}, Lorg/apmem/tools/layouts/LineDefinition;->getLineStartThickness()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getInlineStartThickness()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->setPosition(II)V

    .line 179
    invoke-virtual {v4}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getLength()I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getThickness()I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 172
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p1}, Lorg/apmem/tools/layouts/LineDefinition;->getLineStartThickness()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getInlineStartThickness()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p1}, Lorg/apmem/tools/layouts/LineDefinition;->getLineStartLength()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getInlineStartLength()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->setPosition(II)V

    .line 187
    invoke-virtual {v4}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getThickness()I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getLength()I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 193
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "layoutParams":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private calculateLinesAndChildPosition(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apmem/tools/layouts/LineDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/apmem/tools/layouts/LineDefinition;>;"
    const/4 v9, 0x0

    .line 152
    .local v9, "prevLinesThickness":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 153
    .local v6, "linesCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 154
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apmem/tools/layouts/LineDefinition;

    .line 155
    .local v5, "line":Lorg/apmem/tools/layouts/LineDefinition;
    invoke-virtual {v5, v9}, Lorg/apmem/tools/layouts/LineDefinition;->setLineStartThickness(I)V

    .line 156
    invoke-virtual {v5}, Lorg/apmem/tools/layouts/LineDefinition;->getLineThickness()I

    move-result v10

    add-int/2addr v9, v10

    .line 157
    const/4 v8, 0x0

    .line 158
    .local v8, "prevChildThickness":I
    invoke-virtual {v5}, Lorg/apmem/tools/layouts/LineDefinition;->getViews()Ljava/util/List;

    move-result-object v2

    .line 159
    .local v2, "childViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 160
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 161
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 162
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 163
    .local v7, "lp":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    invoke-virtual {v7, v8}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->setInlineStartLength(I)V

    .line 164
    invoke-virtual {v7}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getLength()I

    move-result v10

    invoke-virtual {v7}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getSpacingLength()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    .end local v0    # "child":Landroid/view/View;
    .end local v7    # "lp":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "childCount":I
    .end local v2    # "childViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v4    # "j":I
    .end local v5    # "line":Lorg/apmem/tools/layouts/LineDefinition;
    .end local v8    # "prevChildThickness":I
    :cond_1
    return-void
.end method

.method private createPaint(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 440
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 441
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 444
    return-object v0
.end method

.method private debugDraw()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 468
    :try_start_0
    const-class v3, Landroid/view/ViewGroup;

    const-string v4, "debugDraw"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 469
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 470
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 476
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return v1

    .line 471
    :catch_0
    move-exception v1

    move v1, v2

    .line 476
    goto :goto_0
.end method

.method private drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 385
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->isDebugDraw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const/16 v0, -0x100

    invoke-direct {p0, v0}, Lorg/apmem/tools/layouts/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v5

    .line 390
    .local v5, "childPaint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-direct {p0, v0}, Lorg/apmem/tools/layouts/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v13

    .line 392
    .local v13, "newLinePaint":Landroid/graphics/Paint;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 394
    .local v12, "lp":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->rightMargin:I

    if-lez v0, :cond_2

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    .line 396
    .local v1, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 397
    .local v2, "y":F
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    add-float v3, v1, v0

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 398
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    sub-float v8, v2, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 399
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    add-float v8, v2, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 402
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_2
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->leftMargin:I

    if-lez v0, :cond_3

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    .line 404
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 405
    .restart local v2    # "y":F
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v3, v1, v0

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 406
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    const/high16 v3, 0x40800000    # 4.0f

    add-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    sub-float v8, v2, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v9, v1, v0

    move-object v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 407
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    const/high16 v3, 0x40800000    # 4.0f

    add-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    add-float v8, v2, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v9, v1, v0

    move-object v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 410
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_3
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->bottomMargin:I

    if-lez v0, :cond_4

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 412
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    .line 413
    .restart local v2    # "y":F
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float v4, v2, v0

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 414
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v7, v1, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v8, v0, v3

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 415
    const/high16 v0, 0x40800000    # 4.0f

    add-float v7, v1, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v8, v0, v3

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 418
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_4
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->topMargin:I

    if-lez v0, :cond_5

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 420
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    .line 421
    .restart local v2    # "y":F
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    sub-float v4, v2, v0

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 422
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v7, v1, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    const/high16 v3, 0x40800000    # 4.0f

    add-float v8, v0, v3

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    sub-float v10, v2, v0

    move-object v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 423
    const/high16 v0, 0x40800000    # 4.0f

    add-float v7, v1, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    const/high16 v3, 0x40800000    # 4.0f

    add-float v8, v0, v3

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    sub-float v10, v2, v0

    move-object v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 426
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_5
    invoke-virtual {v12}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->isNewLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v0

    if-nez v0, :cond_6

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    .line 429
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 430
    .restart local v2    # "y":F
    const/high16 v0, 0x40c00000    # 6.0f

    sub-float v8, v2, v0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float v10, v2, v0

    move-object v6, p1

    move v7, v1

    move v9, v1

    move-object v11, v13

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 432
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 433
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    .line 434
    .restart local v2    # "y":F
    const/high16 v0, 0x40c00000    # 6.0f

    sub-float v7, v1, v0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float v9, v1, v0

    move-object v6, p1

    move v8, v2

    move v10, v2

    move-object v11, v13

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private findSize(III)I
    .locals 1
    .param p1, "modeSize"    # I
    .param p2, "controlMaxSize"    # I
    .param p3, "contentSize"    # I

    .prologue
    .line 133
    sparse-switch p1, :sswitch_data_0

    .line 144
    move v0, p3

    .line 147
    .local v0, "realControlLength":I
    :goto_0
    return v0

    .line 135
    .end local v0    # "realControlLength":I
    :sswitch_0
    move v0, p3

    .line 136
    .restart local v0    # "realControlLength":I
    goto :goto_0

    .line 138
    .end local v0    # "realControlLength":I
    :sswitch_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 139
    .restart local v0    # "realControlLength":I
    goto :goto_0

    .line 141
    .end local v0    # "realControlLength":I
    :sswitch_2
    move v0, p2

    .line 142
    .restart local v0    # "realControlLength":I
    goto :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getGravity(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I
    .locals 3
    .param p1, "lp"    # Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .prologue
    .line 288
    iget-object v2, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v2}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getGravity()I

    move-result v1

    .line 292
    .local v1, "parentGravity":I
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->gravitySpecified()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 293
    invoke-virtual {p1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getGravity()I

    move-result v0

    .line 298
    .local v0, "childGravity":I
    :goto_0
    invoke-direct {p0, v0}, Lorg/apmem/tools/layouts/FlowLayout;->getGravityFromRelative(I)I

    move-result v0

    .line 299
    invoke-direct {p0, v1}, Lorg/apmem/tools/layouts/FlowLayout;->getGravityFromRelative(I)I

    move-result v1

    .line 302
    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    .line 303
    and-int/lit8 v2, v1, 0x7

    or-int/2addr v0, v2

    .line 305
    :cond_0
    and-int/lit8 v2, v0, 0x70

    if-nez v2, :cond_1

    .line 306
    and-int/lit8 v2, v1, 0x70

    or-int/2addr v0, v2

    .line 310
    :cond_1
    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_2

    .line 311
    or-int/lit8 v0, v0, 0x3

    .line 313
    :cond_2
    and-int/lit8 v2, v0, 0x70

    if-nez v2, :cond_3

    .line 314
    or-int/lit8 v0, v0, 0x30

    .line 317
    :cond_3
    return v0

    .line 295
    .end local v0    # "childGravity":I
    :cond_4
    move v0, v1

    .restart local v0    # "childGravity":I
    goto :goto_0
.end method

.method private getGravityFromRelative(I)I
    .locals 8
    .param p1, "childGravity"    # I

    .prologue
    const/high16 v7, 0x800000

    const/4 v5, 0x5

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 324
    iget-object v4, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v4}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v4

    if-ne v4, v6, :cond_0

    and-int v4, p1, v7

    if-nez v4, :cond_0

    .line 325
    move v0, p1

    .line 326
    .local v0, "horizontalGravity":I
    const/4 p1, 0x0

    .line 327
    and-int/lit8 v4, v0, 0x7

    shr-int/lit8 v4, v4, 0x0

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr p1, v4

    .line 328
    and-int/lit8 v4, v0, 0x70

    shr-int/lit8 v4, v4, 0x4

    shl-int/lit8 v4, v4, 0x0

    or-int/2addr p1, v4

    .line 332
    .end local v0    # "horizontalGravity":I
    :cond_0
    iget-object v4, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v4}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v6, :cond_1

    and-int v4, p1, v7

    if-eqz v4, :cond_1

    .line 333
    move v1, p1

    .line 334
    .local v1, "ltrGravity":I
    const/4 p1, 0x0

    .line 335
    and-int/lit8 v4, v1, 0x3

    if-ne v4, v2, :cond_2

    move v4, v5

    :goto_0
    or-int/2addr p1, v4

    .line 336
    and-int/lit8 v4, v1, 0x5

    if-ne v4, v5, :cond_3

    :goto_1
    or-int/2addr p1, v2

    .line 339
    .end local v1    # "ltrGravity":I
    :cond_1
    return p1

    .restart local v1    # "ltrGravity":I
    :cond_2
    move v4, v3

    .line 335
    goto :goto_0

    :cond_3
    move v2, v3

    .line 336
    goto :goto_1
.end method

.method private getWeight(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)F
    .locals 1
    .param p1, "lp"    # Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .prologue
    .line 343
    invoke-virtual {p1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->weightSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->getWeight()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getWeightDefault()F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 366
    instance-of v0, p1, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 360
    .local v0, "more":Z
    invoke-direct {p0, p1, p2}, Lorg/apmem/tools/layouts/FlowLayout;->drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 361
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->generateDefaultLayoutParams()Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 371
    new-instance v0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lorg/apmem/tools/layouts/FlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lorg/apmem/tools/layouts/FlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    .locals 2
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 376
    new-instance v0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 381
    new-instance v0, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getGravity()I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    if-nez v0, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 503
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getLayoutDirection()I

    move-result v0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getWeightDefault()F
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getWeightDefault()F

    move-result v0

    return v0
.end method

.method public isDebugDraw()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/LayoutConfiguration;->isDebugDraw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apmem/tools/layouts/FlowLayout;->debugDraw()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 348
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getChildCount()I

    move-result v1

    .line 349
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 350
    invoke-virtual {p0, v2}, Lorg/apmem/tools/layouts/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 352
    .local v3, "lp":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    invoke-static {v3}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$100(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v4

    iget v5, v3, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    invoke-static {v3}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$200(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v5

    iget v6, v3, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    invoke-static {v3}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$100(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v6

    iget v7, v3, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v3}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$200(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;)I

    move-result v7

    iget v8, v3, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 44
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingRight()I

    move-result v28

    sub-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v28

    sub-int v24, v27, v28

    .line 45
    .local v24, "sizeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v28

    sub-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingBottom()I

    move-result v28

    sub-int v23, v27, v28

    .line 46
    .local v23, "sizeHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 47
    .local v19, "modeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 48
    .local v16, "modeHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v27

    if-nez v27, :cond_0

    move/from16 v7, v24

    .line 49
    .local v7, "controlMaxLength":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v27

    if-nez v27, :cond_1

    move/from16 v8, v23

    .line 50
    .local v8, "controlMaxThickness":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v27

    if-nez v27, :cond_2

    move/from16 v17, v19

    .line 51
    .local v17, "modeLength":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v27

    if-nez v27, :cond_3

    move/from16 v18, v16

    .line 53
    .local v18, "modeThickness":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->lines:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    .line 54
    new-instance v10, Lorg/apmem/tools/layouts/LineDefinition;

    invoke-direct {v10, v7}, Lorg/apmem/tools/layouts/LineDefinition;-><init>(I)V

    .line 55
    .local v10, "currentLine":Lorg/apmem/tools/layouts/LineDefinition;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->lines:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getChildCount()I

    move-result v9

    .line 58
    .local v9, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-ge v11, v9, :cond_b

    .line 59
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apmem/tools/layouts/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 60
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 58
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "controlMaxLength":I
    .end local v8    # "controlMaxThickness":I
    .end local v9    # "count":I
    .end local v10    # "currentLine":Lorg/apmem/tools/layouts/LineDefinition;
    .end local v11    # "i":I
    .end local v17    # "modeLength":I
    .end local v18    # "modeThickness":I
    :cond_0
    move/from16 v7, v23

    .line 48
    goto :goto_0

    .restart local v7    # "controlMaxLength":I
    :cond_1
    move/from16 v8, v24

    .line 49
    goto :goto_1

    .restart local v8    # "controlMaxThickness":I
    :cond_2
    move/from16 v17, v16

    .line 50
    goto :goto_2

    .restart local v17    # "modeLength":I
    :cond_3
    move/from16 v18, v19

    .line 51
    goto :goto_3

    .line 64
    .restart local v4    # "child":Landroid/view/View;
    .restart local v9    # "count":I
    .restart local v10    # "currentLine":Lorg/apmem/tools/layouts/LineDefinition;
    .restart local v11    # "i":I
    .restart local v18    # "modeThickness":I
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;

    .line 66
    .local v15, "lp":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingRight()I

    move-result v28

    add-int v27, v27, v28

    iget v0, v15, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->width:I

    move/from16 v28, v0

    move/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/apmem/tools/layouts/FlowLayout;->getChildMeasureSpec(III)I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingBottom()I

    move-result v29

    add-int v28, v28, v29

    iget v0, v15, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->height:I

    move/from16 v29, v0

    move/from16 v0, p2

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lorg/apmem/tools/layouts/FlowLayout;->getChildMeasureSpec(III)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v27

    move/from16 v0, v27

    invoke-static {v15, v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->access$002(Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;I)I

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v27

    if-nez v27, :cond_7

    .line 73
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->setLength(I)V

    .line 74
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->setThickness(I)V

    .line 80
    :goto_6
    invoke-virtual {v15}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->isNewLine()Z

    move-result v27

    if-nez v27, :cond_5

    if-eqz v17, :cond_8

    invoke-virtual {v10, v4}, Lorg/apmem/tools/layouts/LineDefinition;->canFit(Landroid/view/View;)Z

    move-result v27

    if-nez v27, :cond_8

    :cond_5
    const/16 v20, 0x1

    .line 81
    .local v20, "newLine":Z
    :goto_7
    if-eqz v20, :cond_6

    .line 82
    new-instance v10, Lorg/apmem/tools/layouts/LineDefinition;

    .end local v10    # "currentLine":Lorg/apmem/tools/layouts/LineDefinition;
    invoke-direct {v10, v7}, Lorg/apmem/tools/layouts/LineDefinition;-><init>(I)V

    .line 83
    .restart local v10    # "currentLine":Lorg/apmem/tools/layouts/LineDefinition;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getLayoutDirection()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->lines:Ljava/util/List;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v0, v1, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 90
    :cond_6
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v27

    if-nez v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getLayoutDirection()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 91
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v10, v0, v4}, Lorg/apmem/tools/layouts/LineDefinition;->addView(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 76
    .end local v20    # "newLine":Z
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->setLength(I)V

    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;->setThickness(I)V

    goto/16 :goto_6

    .line 80
    :cond_8
    const/16 v20, 0x0

    goto :goto_7

    .line 86
    .restart local v20    # "newLine":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->lines:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 93
    :cond_a
    invoke-virtual {v10, v4}, Lorg/apmem/tools/layouts/LineDefinition;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 97
    .end local v4    # "child":Landroid/view/View;
    .end local v15    # "lp":Lorg/apmem/tools/layouts/FlowLayout$LayoutParams;
    .end local v20    # "newLine":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->lines:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/apmem/tools/layouts/FlowLayout;->calculateLinesAndChildPosition(Ljava/util/List;)V

    .line 99
    const/4 v5, 0x0

    .line 100
    .local v5, "contentLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->lines:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v14

    .line 101
    .local v14, "linesCount":I
    const/4 v11, 0x0

    :goto_9
    if-ge v11, v14, :cond_c

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->lines:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apmem/tools/layouts/LineDefinition;

    .line 103
    .local v12, "l":Lorg/apmem/tools/layouts/LineDefinition;
    invoke-virtual {v12}, Lorg/apmem/tools/layouts/LineDefinition;->getLineLength()I

    move-result v27

    move/from16 v0, v27

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 101
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 105
    .end local v12    # "l":Lorg/apmem/tools/layouts/LineDefinition;
    :cond_c
    invoke-virtual {v10}, Lorg/apmem/tools/layouts/LineDefinition;->getLineStartThickness()I

    move-result v27

    invoke-virtual {v10}, Lorg/apmem/tools/layouts/LineDefinition;->getLineThickness()I

    move-result v28

    add-int v6, v27, v28

    .line 107
    .local v6, "contentThickness":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v7, v5}, Lorg/apmem/tools/layouts/FlowLayout;->findSize(III)I

    move-result v21

    .line 108
    .local v21, "realControlLength":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v8, v6}, Lorg/apmem/tools/layouts/FlowLayout;->findSize(III)I

    move-result v22

    .line 110
    .local v22, "realControlThickness":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->lines:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/apmem/tools/layouts/FlowLayout;->applyGravityToLines(Ljava/util/List;II)V

    .line 112
    const/4 v11, 0x0

    :goto_a
    if-ge v11, v14, :cond_d

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->lines:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apmem/tools/layouts/LineDefinition;

    .line 114
    .local v13, "line":Lorg/apmem/tools/layouts/LineDefinition;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apmem/tools/layouts/FlowLayout;->applyGravityToLine(Lorg/apmem/tools/layouts/LineDefinition;)V

    .line 115
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apmem/tools/layouts/FlowLayout;->applyPositionsToViews(Lorg/apmem/tools/layouts/LineDefinition;)V

    .line 112
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 119
    .end local v13    # "line":Lorg/apmem/tools/layouts/LineDefinition;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingRight()I

    move-result v28

    add-int v26, v27, v28

    .line 120
    .local v26, "totalControlWidth":I
    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingBottom()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v28

    add-int v25, v27, v28

    .line 121
    .local v25, "totalControlHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apmem/tools/layouts/LayoutConfiguration;->getOrientation()I

    move-result v27

    if-nez v27, :cond_e

    .line 122
    add-int v26, v26, v5

    .line 123
    add-int v25, v25, v6

    .line 128
    :goto_b
    move/from16 v0, v26

    move/from16 v1, p1

    invoke-static {v0, v1}, Lorg/apmem/tools/layouts/FlowLayout;->resolveSize(II)I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apmem/tools/layouts/FlowLayout;->resolveSize(II)I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apmem/tools/layouts/FlowLayout;->setMeasuredDimension(II)V

    .line 129
    return-void

    .line 125
    :cond_e
    add-int v26, v26, v6

    .line 126
    add-int v25, v25, v5

    goto :goto_b
.end method

.method public setDebugDraw(Z)V
    .locals 1
    .param p1, "debugDraw"    # Z

    .prologue
    .line 461
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v0, p1}, Lorg/apmem/tools/layouts/LayoutConfiguration;->setDebugDraw(Z)V

    .line 462
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->invalidate()V

    .line 463
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 493
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v0, p1}, Lorg/apmem/tools/layouts/LayoutConfiguration;->setGravity(I)V

    .line 494
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->requestLayout()V

    .line 495
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v0, p1}, Lorg/apmem/tools/layouts/LayoutConfiguration;->setLayoutDirection(I)V

    .line 508
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->requestLayout()V

    .line 509
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v0, p1}, Lorg/apmem/tools/layouts/LayoutConfiguration;->setOrientation(I)V

    .line 453
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->requestLayout()V

    .line 454
    return-void
.end method

.method public setWeightDefault(F)V
    .locals 1
    .param p1, "weightDefault"    # F

    .prologue
    .line 484
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->config:Lorg/apmem/tools/layouts/LayoutConfiguration;

    invoke-virtual {v0, p1}, Lorg/apmem/tools/layouts/LayoutConfiguration;->setWeightDefault(F)V

    .line 485
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->requestLayout()V

    .line 486
    return-void
.end method
