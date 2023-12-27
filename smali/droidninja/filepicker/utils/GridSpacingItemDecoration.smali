.class public Ldroidninja/filepicker/utils/GridSpacingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GridSpacingItemDecoration.java"


# instance fields
.field private includeEdge:Z

.field private spacing:I

.field private spanCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "spanCount"    # I
    .param p2, "spacing"    # I
    .param p3, "includeEdge"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 14
    iput p1, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spanCount:I

    .line 15
    iput p2, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spacing:I

    .line 16
    iput-boolean p3, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->includeEdge:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 21
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 22
    .local v1, "position":I
    iget v2, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spanCount:I

    rem-int v0, v1, v2

    .line 24
    .local v0, "column":I
    iget-boolean v2, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->includeEdge:Z

    if-eqz v2, :cond_2

    .line 25
    iget v2, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spacing:I

    iget v3, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spacing:I

    mul-int/2addr v3, v0

    iget v4, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 26
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spacing:I

    mul-int/2addr v2, v3

    iget v3, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 28
    iget v2, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spanCount:I

    if-ge v1, v2, :cond_0

    .line 29
    iget v2, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spacing:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 31
    :cond_0
    iget v2, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spacing:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 39
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    iget v2, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spacing:I

    mul-int/2addr v2, v0

    iget v3, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 34
    iget v2, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spacing:I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spacing:I

    mul-int/2addr v3, v4

    iget v4, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 35
    iget v2, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spanCount:I

    if-lt v1, v2, :cond_1

    .line 36
    iget v2, p0, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;->spacing:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method
