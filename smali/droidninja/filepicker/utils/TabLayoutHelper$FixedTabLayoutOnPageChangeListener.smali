.class public Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabLayoutHelper.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldroidninja/filepicker/utils/TabLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FixedTabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private mPreviousScrollState:I

.field private mScrollState:I

.field private final mTabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/design/widget/TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 1
    .param p1, "tabLayout"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 474
    return-void
.end method

.method private shouldUpdateScrollPosition()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 510
    iget v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mScrollState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mScrollState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 478
    iget v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mScrollState:I

    iput v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mPreviousScrollState:I

    .line 479
    iput p1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mScrollState:I

    .line 480
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v1, 0x1

    .line 485
    iget-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 486
    .local v0, "tabLayout":Landroid/support/design/widget/TabLayout;
    if-eqz v0, :cond_1

    .line 487
    invoke-direct {p0}, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->shouldUpdateScrollPosition()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    iget v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mScrollState:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mScrollState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-ne v2, v1, :cond_2

    .line 493
    .local v1, "updateText":Z
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 496
    .end local v1    # "updateText":Z
    :cond_1
    return-void

    .line 490
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 500
    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 501
    .local v0, "tabLayout":Landroid/support/design/widget/TabLayout;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 504
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    iget v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;->mScrollState:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Ldroidninja/filepicker/utils/TabLayoutHelper$Internal;->selectTab(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 507
    :cond_0
    return-void

    .line 504
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
