.class public Ldroidninja/filepicker/views/SmoothCheckBox;
.super Landroid/view/View;
.source "SmoothCheckBox.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final COLOR_CHECKED:I

.field private static final COLOR_FLOOR_UNCHECKED:I

.field private static final COLOR_TICK:I = -0x1

.field private static final COLOR_UNCHECKED:I = -0x1

.field private static final DEF_ANIM_DURATION:I = 0x12c

.field private static final DEF_DRAW_SIZE:I = 0x19

.field private static final KEY_INSTANCE_STATE:Ljava/lang/String; = "InstanceState"


# instance fields
.field private mAnimDuration:I

.field private mCenterPoint:Landroid/graphics/Point;

.field private mChecked:Z

.field private mCheckedColor:I

.field private mDrewDistance:F

.field private mFloorColor:I

.field private mFloorPaint:Landroid/graphics/Paint;

.field private mFloorScale:F

.field private mFloorUnCheckedColor:I

.field private mLeftLineDistance:F

.field private mListener:Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRightLineDistance:F

.field private mScaleVal:F

.field private mStrokeWidth:I

.field private mTickDrawing:Z

.field private mTickPaint:Landroid/graphics/Paint;

.field private mTickPath:Landroid/graphics/Path;

.field private mTickPoints:[Landroid/graphics/Point;

.field private mUnCheckedColor:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "#FB4846"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldroidninja/filepicker/views/SmoothCheckBox;->COLOR_CHECKED:I

    .line 28
    const-string v0, "#DFDFDF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldroidninja/filepicker/views/SmoothCheckBox;->COLOR_FLOOR_UNCHECKED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldroidninja/filepicker/views/SmoothCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldroidninja/filepicker/views/SmoothCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mScaleVal:F

    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorScale:F

    .line 54
    invoke-direct {p0, p2}, Ldroidninja/filepicker/views/SmoothCheckBox;->init(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mScaleVal:F

    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorScale:F

    .line 60
    invoke-direct {p0, p2}, Ldroidninja/filepicker/views/SmoothCheckBox;->init(Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method static synthetic access$002(Ldroidninja/filepicker/views/SmoothCheckBox;Z)Z
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/views/SmoothCheckBox;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickDrawing:Z

    return p1
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 23
    sget v0, Ldroidninja/filepicker/views/SmoothCheckBox;->COLOR_FLOOR_UNCHECKED:I

    return v0
.end method

.method static synthetic access$102(Ldroidninja/filepicker/views/SmoothCheckBox;F)F
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/views/SmoothCheckBox;
    .param p1, "x1"    # F

    .prologue
    .line 23
    iput p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    return p1
.end method

.method static synthetic access$200(Ldroidninja/filepicker/views/SmoothCheckBox;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/views/SmoothCheckBox;

    .prologue
    .line 23
    invoke-direct {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->startCheckedAnimation()V

    return-void
.end method

.method static synthetic access$300(Ldroidninja/filepicker/views/SmoothCheckBox;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/views/SmoothCheckBox;

    .prologue
    .line 23
    invoke-direct {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->startUnCheckedAnimation()V

    return-void
.end method

.method static synthetic access$400(Ldroidninja/filepicker/views/SmoothCheckBox;)F
    .locals 1
    .param p0, "x0"    # Ldroidninja/filepicker/views/SmoothCheckBox;

    .prologue
    .line 23
    iget v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mScaleVal:F

    return v0
.end method

.method static synthetic access$402(Ldroidninja/filepicker/views/SmoothCheckBox;F)F
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/views/SmoothCheckBox;
    .param p1, "x1"    # F

    .prologue
    .line 23
    iput p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mScaleVal:F

    return p1
.end method

.method static synthetic access$502(Ldroidninja/filepicker/views/SmoothCheckBox;I)I
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/views/SmoothCheckBox;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorColor:I

    return p1
.end method

.method static synthetic access$600(Ldroidninja/filepicker/views/SmoothCheckBox;)I
    .locals 1
    .param p0, "x0"    # Ldroidninja/filepicker/views/SmoothCheckBox;

    .prologue
    .line 23
    iget v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mUnCheckedColor:I

    return v0
.end method

.method static synthetic access$700(Ldroidninja/filepicker/views/SmoothCheckBox;)I
    .locals 1
    .param p0, "x0"    # Ldroidninja/filepicker/views/SmoothCheckBox;

    .prologue
    .line 23
    iget v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCheckedColor:I

    return v0
.end method

.method static synthetic access$800(IIF)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Ldroidninja/filepicker/views/SmoothCheckBox;->getGradientColor(IIF)I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Ldroidninja/filepicker/views/SmoothCheckBox;F)F
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/views/SmoothCheckBox;
    .param p1, "x1"    # F

    .prologue
    .line 23
    iput p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorScale:F

    return p1
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 244
    iget-object v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorPaint:Landroid/graphics/Paint;

    iget v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 246
    .local v0, "radius":I
    iget-object v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorScale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 247
    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 238
    iget-object v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mUnCheckedColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mStrokeWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mScaleVal:F

    mul-float v0, v1, v2

    .line 240
    .local v0, "radius":F
    iget-object v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 241
    return-void
.end method

.method private drawTick(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 250
    iget-boolean v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickDrawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, p1}, Ldroidninja/filepicker/views/SmoothCheckBox;->drawTickPath(Landroid/graphics/Canvas;)V

    .line 253
    :cond_0
    return-void
.end method

.method private drawTickDelayed()V
    .locals 4

    .prologue
    .line 365
    new-instance v0, Ldroidninja/filepicker/views/SmoothCheckBox$7;

    invoke-direct {v0, p0}, Ldroidninja/filepicker/views/SmoothCheckBox$7;-><init>(Ldroidninja/filepicker/views/SmoothCheckBox;)V

    iget v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Ldroidninja/filepicker/views/SmoothCheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    return-void
.end method

.method private drawTickPath(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v0, 0x40400000    # 3.0f

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 256
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 258
    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    iget v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mLeftLineDistance:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 259
    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    cmpg-float v3, v3, v0

    if-gez v3, :cond_2

    .line 260
    .local v0, "step":F
    :goto_0
    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    add-float/2addr v3, v0

    iput v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    .line 261
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v6

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    mul-float/2addr v4, v5

    iget v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mLeftLineDistance:F

    div-float/2addr v4, v5

    add-float v1, v3, v4

    .line 262
    .local v1, "stopX":F
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    mul-float/2addr v4, v5

    iget v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mLeftLineDistance:F

    div-float/2addr v4, v5

    add-float v2, v3, v4

    .line 264
    .local v2, "stopY":F
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v6

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 265
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 266
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 268
    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    iget v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mLeftLineDistance:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 269
    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mLeftLineDistance:F

    iput v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    .line 298
    .end local v0    # "step":F
    .end local v1    # "stopX":F
    .end local v2    # "stopY":F
    :cond_0
    :goto_1
    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    iget v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mLeftLineDistance:F

    iget v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mRightLineDistance:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 299
    new-instance v3, Ldroidninja/filepicker/views/SmoothCheckBox$2;

    invoke-direct {v3, p0}, Ldroidninja/filepicker/views/SmoothCheckBox$2;-><init>(Ldroidninja/filepicker/views/SmoothCheckBox;)V

    const-wide/16 v4, 0xa

    invoke-virtual {p0, v3, v4, v5}, Ldroidninja/filepicker/views/SmoothCheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    :cond_1
    return-void

    .line 259
    :cond_2
    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mWidth:I

    int-to-float v3, v3

    div-float v0, v3, v5

    goto/16 :goto_0

    .line 273
    :cond_3
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v6

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 274
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 275
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 278
    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    iget v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mLeftLineDistance:F

    iget v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mRightLineDistance:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 279
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v7

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v8

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    iget v6, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mLeftLineDistance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mRightLineDistance:F

    div-float/2addr v4, v5

    add-float v1, v3, v4

    .line 280
    .restart local v1    # "stopX":F
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v7

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    iget v6, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mLeftLineDistance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mRightLineDistance:F

    div-float/2addr v4, v5

    sub-float v2, v3, v4

    .line 282
    .restart local v2    # "stopY":F
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 283
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 284
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 285
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 287
    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mWidth:I

    div-int/lit8 v3, v3, 0x14

    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    .line 288
    .restart local v0    # "step":F
    :goto_2
    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    add-float/2addr v3, v0

    iput v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    goto/16 :goto_1

    .line 287
    .end local v0    # "step":F
    :cond_4
    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mWidth:I

    div-int/lit8 v3, v3, 0x14

    int-to-float v0, v3

    goto :goto_2

    .line 290
    .end local v1    # "stopX":F
    .end local v2    # "stopY":F
    :cond_5
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 291
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 292
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v4, v4, v8

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 293
    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private static getGradientColor(IIF)I
    .locals 13
    .param p0, "startColor"    # I
    .param p1, "endColor"    # I
    .param p2, "percent"    # F

    .prologue
    const/high16 v12, 0xff0000

    const v10, 0xff00

    const/high16 v11, 0x3f800000    # 1.0f

    .line 375
    and-int v9, p0, v12

    shr-int/lit8 v8, v9, 0x10

    .line 376
    .local v8, "sr":I
    and-int v9, p0, v10

    shr-int/lit8 v7, v9, 0x8

    .line 377
    .local v7, "sg":I
    and-int/lit16 v6, p0, 0xff

    .line 379
    .local v6, "sb":I
    and-int v9, p1, v12

    shr-int/lit8 v5, v9, 0x10

    .line 380
    .local v5, "er":I
    and-int v9, p1, v10

    shr-int/lit8 v4, v9, 0x8

    .line 381
    .local v4, "eg":I
    and-int/lit16 v3, p1, 0xff

    .line 383
    .local v3, "eb":I
    int-to-float v9, v8

    sub-float v10, v11, p2

    mul-float/2addr v9, v10

    int-to-float v10, v5

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v2, v9

    .line 384
    .local v2, "cr":I
    int-to-float v9, v7

    sub-float v10, v11, p2

    mul-float/2addr v9, v10

    int-to-float v10, v4

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 385
    .local v1, "cg":I
    int-to-float v9, v6

    sub-float v10, v11, p2

    mul-float/2addr v9, v10

    int-to-float v10, v3

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v0, v9

    .line 386
    .local v0, "cb":I
    const/16 v9, 0xff

    invoke-static {v9, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    return v9
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 65
    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ldroidninja/filepicker/R$styleable;->SmoothCheckBox:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v2, Ldroidninja/filepicker/R$styleable;->SmoothCheckBox_color_tick:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 67
    .local v1, "tickColor":I
    sget v2, Ldroidninja/filepicker/R$styleable;->SmoothCheckBox_duration:I

    const/16 v3, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mAnimDuration:I

    .line 68
    sget v2, Ldroidninja/filepicker/R$styleable;->SmoothCheckBox_color_unchecked_stroke:I

    sget v3, Ldroidninja/filepicker/views/SmoothCheckBox;->COLOR_FLOOR_UNCHECKED:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorColor:I

    .line 69
    sget v2, Ldroidninja/filepicker/R$styleable;->SmoothCheckBox_color_checked:I

    sget v3, Ldroidninja/filepicker/views/SmoothCheckBox;->COLOR_CHECKED:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCheckedColor:I

    .line 70
    sget v2, Ldroidninja/filepicker/R$styleable;->SmoothCheckBox_color_unchecked:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mUnCheckedColor:I

    .line 71
    sget v2, Ldroidninja/filepicker/R$styleable;->SmoothCheckBox_stroke_width:I

    .line 72
    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ldroidninja/filepicker/views/SmoothCheckBox;->dp2px(Landroid/content/Context;F)I

    move-result v3

    .line 71
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mStrokeWidth:I

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    iget v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorColor:I

    iput v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorUnCheckedColor:I

    .line 76
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 79
    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorPaint:Landroid/graphics/Paint;

    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCheckedColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPath:Landroid/graphics/Path;

    .line 90
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    .line 91
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/Point;

    iput-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    .line 92
    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    aput-object v4, v2, v3

    .line 93
    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    aput-object v3, v2, v5

    .line 94
    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    const/4 v3, 0x2

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    aput-object v4, v2, v3

    .line 96
    new-instance v2, Ldroidninja/filepicker/views/SmoothCheckBox$1;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/views/SmoothCheckBox$1;-><init>(Ldroidninja/filepicker/views/SmoothCheckBox;)V

    invoke-virtual {p0, v2}, Ldroidninja/filepicker/views/SmoothCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method private measureSize(I)I
    .locals 6
    .param p1, "measureSpec"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-virtual {p0, v4, v5}, Ldroidninja/filepicker/views/SmoothCheckBox;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 185
    .local v0, "defSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 186
    .local v3, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 188
    .local v2, "specMode":I
    const/4 v1, 0x0

    .line 189
    .local v1, "result":I
    sparse-switch v2, :sswitch_data_0

    .line 198
    :goto_0
    return v1

    .line 192
    :sswitch_0
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 193
    goto :goto_0

    .line 195
    :sswitch_1
    move v1, v3

    goto :goto_0

    .line 189
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private reset()V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 176
    const/4 v2, 0x1

    iput-boolean v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickDrawing:Z

    .line 177
    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorScale:F

    .line 178
    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mScaleVal:F

    .line 179
    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCheckedColor:I

    :goto_0
    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorColor:I

    .line 180
    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mLeftLineDistance:F

    iget v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mRightLineDistance:F

    add-float/2addr v1, v0

    :cond_1
    iput v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    .line 181
    return-void

    .line 179
    :cond_2
    iget v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mFloorUnCheckedColor:I

    goto :goto_0
.end method

.method private startCheckedAnimation()V
    .locals 4

    .prologue
    .line 309
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 310
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mAnimDuration:I

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 311
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 312
    new-instance v2, Ldroidninja/filepicker/views/SmoothCheckBox$3;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/views/SmoothCheckBox$3;-><init>(Ldroidninja/filepicker/views/SmoothCheckBox;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 320
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 322
    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 323
    .local v1, "floorAnimator":Landroid/animation/ValueAnimator;
    iget v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 324
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    new-instance v2, Ldroidninja/filepicker/views/SmoothCheckBox$4;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/views/SmoothCheckBox$4;-><init>(Ldroidninja/filepicker/views/SmoothCheckBox;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 332
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 334
    invoke-direct {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->drawTickDelayed()V

    .line 335
    return-void

    .line 309
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 322
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startUnCheckedAnimation()V
    .locals 4

    .prologue
    .line 338
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 339
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 340
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    new-instance v2, Ldroidninja/filepicker/views/SmoothCheckBox$5;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/views/SmoothCheckBox$5;-><init>(Ldroidninja/filepicker/views/SmoothCheckBox;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 349
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 351
    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 352
    .local v1, "floorAnimator":Landroid/animation/ValueAnimator;
    iget v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 353
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 354
    new-instance v2, Ldroidninja/filepicker/views/SmoothCheckBox$6;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/views/SmoothCheckBox$6;-><init>(Ldroidninja/filepicker/views/SmoothCheckBox;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 361
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 362
    return-void

    .line 338
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 351
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public dp2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dipValue"    # F

    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 399
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Ldroidninja/filepicker/views/SmoothCheckBox;->drawBorder(Landroid/graphics/Canvas;)V

    .line 233
    invoke-direct {p0, p1}, Ldroidninja/filepicker/views/SmoothCheckBox;->drawCenter(Landroid/graphics/Canvas;)V

    .line 234
    invoke-direct {p0, p1}, Ldroidninja/filepicker/views/SmoothCheckBox;->drawTick(Landroid/graphics/Canvas;)V

    .line 235
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v4, 0x1

    const/high16 v3, 0x41f00000    # 30.0f

    .line 209
    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mWidth:I

    .line 210
    iget v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mStrokeWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    :goto_0
    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mStrokeWidth:I

    .line 211
    iget v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mStrokeWidth:I

    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    :goto_1
    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mStrokeWidth:I

    .line 212
    iget v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mStrokeWidth:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mStrokeWidth:I

    .line 213
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    iget v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 214
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mCenterPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 216
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v5

    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 217
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v5

    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 218
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v2, 0x41500000    # 13.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 219
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 220
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v8

    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v2, 0x41b00000    # 22.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 221
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v8

    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 223
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 224
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 223
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mLeftLineDistance:F

    .line 225
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 226
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 225
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mRightLineDistance:F

    .line 227
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickPaint:Landroid/graphics/Paint;

    iget v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    return-void

    .line 210
    :cond_0
    iget v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mStrokeWidth:I

    goto/16 :goto_0

    .line 211
    :cond_1
    iget v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mStrokeWidth:I

    goto/16 :goto_1

    .line 212
    :cond_2
    iget v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mStrokeWidth:I

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 204
    invoke-direct {p0, p1}, Ldroidninja/filepicker/views/SmoothCheckBox;->measureSize(I)I

    move-result v0

    invoke-direct {p0, p2}, Ldroidninja/filepicker/views/SmoothCheckBox;->measureSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->setMeasuredDimension(II)V

    .line 205
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 121
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 122
    check-cast v0, Landroid/os/Bundle;

    .line 123
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "InstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 124
    .local v1, "isChecked":Z
    invoke-virtual {p0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->setChecked(Z)V

    .line 125
    const-string v2, "InstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 129
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "isChecked":Z
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "InstanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    const-string v1, "InstanceState"

    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mChecked:Z

    .line 144
    invoke-direct {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->reset()V

    .line 145
    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->invalidate()V

    .line 146
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mListener:Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mListener:Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;

    iget-boolean v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mChecked:Z

    invoke-interface {v0, p0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;->onCheckedChanged(Ldroidninja/filepicker/views/SmoothCheckBox;Z)V

    .line 149
    :cond_0
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2
    .param p1, "checked"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 157
    if-eqz p2, :cond_2

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mTickDrawing:Z

    .line 159
    iput-boolean p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mChecked:Z

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mDrewDistance:F

    .line 161
    if-eqz p1, :cond_1

    .line 162
    invoke-direct {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->startCheckedAnimation()V

    .line 166
    :goto_0
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mListener:Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mListener:Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;

    iget-boolean v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mChecked:Z

    invoke-interface {v0, p0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;->onCheckedChanged(Ldroidninja/filepicker/views/SmoothCheckBox;Z)V

    .line 173
    :cond_0
    :goto_1
    return-void

    .line 164
    :cond_1
    invoke-direct {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->startUnCheckedAnimation()V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p0, p1}, Ldroidninja/filepicker/views/SmoothCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public setOnCheckedChangeListener(Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "l"    # Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;

    .prologue
    .line 390
    iput-object p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox;->mListener:Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;

    .line 391
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Ldroidninja/filepicker/views/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->setChecked(Z)V

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
