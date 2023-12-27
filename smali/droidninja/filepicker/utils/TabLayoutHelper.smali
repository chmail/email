.class public Ldroidninja/filepicker/utils/TabLayoutHelper;
.super Ljava/lang/Object;
.source "TabLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldroidninja/filepicker/utils/TabLayoutHelper$Internal;,
        Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;
    }
.end annotation


# instance fields
.field protected mAdjustTabModeRunnable:Ljava/lang/Runnable;

.field protected mAutoAdjustTabMode:Z

.field protected mDuringSetTabsFromPagerAdapter:Z

.field protected mInternalDataSetObserver:Landroid/database/DataSetObserver;

.field protected mInternalOnAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

.field protected mInternalOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

.field protected mInternalTabLayoutOnPageChangeListener:Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;

.field protected mSetTabsFromPagerAdapterRunnable:Ljava/lang/Runnable;

.field protected mTabLayout:Landroid/support/design/widget/TabLayout;

.field protected mUpdateScrollPositionRunnable:Ljava/lang/Runnable;

.field protected mUserOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

.field protected mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "tabLayout"    # Landroid/support/design/widget/TabLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAutoAdjustTabMode:Z

    .line 58
    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 60
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    iput-object p1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 65
    iput-object p2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 67
    new-instance v1, Ldroidninja/filepicker/utils/TabLayoutHelper$1;

    invoke-direct {v1, p0}, Ldroidninja/filepicker/utils/TabLayoutHelper$1;-><init>(Ldroidninja/filepicker/utils/TabLayoutHelper;)V

    iput-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 74
    new-instance v1, Ldroidninja/filepicker/utils/TabLayoutHelper$2;

    invoke-direct {v1, p0}, Ldroidninja/filepicker/utils/TabLayoutHelper$2;-><init>(Ldroidninja/filepicker/utils/TabLayoutHelper;)V

    iput-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 91
    new-instance v1, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;

    iget-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, v2}, Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalTabLayoutOnPageChangeListener:Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;

    .line 93
    new-instance v1, Ldroidninja/filepicker/utils/TabLayoutHelper$3;

    invoke-direct {v1, p0}, Ldroidninja/filepicker/utils/TabLayoutHelper$3;-><init>(Ldroidninja/filepicker/utils/TabLayoutHelper;)V

    iput-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalOnAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    .line 100
    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v1, v2}, Ldroidninja/filepicker/utils/TabLayoutHelper;->setupWithViewPager(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Ldroidninja/filepicker/utils/TabLayoutHelper;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/utils/TabLayoutHelper;

    .prologue
    .line 35
    invoke-direct {p0}, Ldroidninja/filepicker/utils/TabLayoutHelper;->updateScrollPosition()V

    return-void
.end method

.method private updateScrollPosition()V
    .locals 4

    .prologue
    .line 464
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 465
    return-void
.end method


# virtual methods
.method protected adjustTabMode(I)V
    .locals 3
    .param p1, "prevScrollX"    # I

    .prologue
    .line 311
    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAdjustTabModeRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 315
    :cond_0
    if-gez p1, :cond_1

    .line 316
    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result p1

    .line 319
    :cond_1
    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p0, v1, p1}, Ldroidninja/filepicker/utils/TabLayoutHelper;->adjustTabModeInternal(Landroid/support/design/widget/TabLayout;I)V

    goto :goto_0

    .line 322
    :cond_2
    move v0, p1

    .line 323
    .local v0, "prevScrollX1":I
    new-instance v1, Ldroidninja/filepicker/utils/TabLayoutHelper$5;

    invoke-direct {v1, p0, v0}, Ldroidninja/filepicker/utils/TabLayoutHelper$5;-><init>(Ldroidninja/filepicker/utils/TabLayoutHelper;I)V

    iput-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAdjustTabModeRunnable:Ljava/lang/Runnable;

    .line 330
    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAdjustTabModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected adjustTabModeInternal(Landroid/support/design/widget/TabLayout;I)V
    .locals 5
    .param p1, "tabLayout"    # Landroid/support/design/widget/TabLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "prevScrollX"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 431
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getTabMode()I

    move-result v1

    .line 433
    .local v1, "prevTabMode":I
    invoke-virtual {p1, v3}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 434
    invoke-virtual {p1, v4}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 436
    invoke-virtual {p0, p1}, Ldroidninja/filepicker/utils/TabLayoutHelper;->determineTabMode(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    .line 438
    .local v0, "newTabMode":I
    invoke-virtual {p0}, Ldroidninja/filepicker/utils/TabLayoutHelper;->cancelPendingUpdateScrollPosition()V

    .line 440
    if-ne v0, v4, :cond_0

    .line 441
    invoke-virtual {p1, v3}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 442
    invoke-virtual {p1, v4}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 461
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-virtual {p1, v3}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 445
    .local v2, "slidingTabStrip":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 446
    if-nez v1, :cond_1

    .line 448
    invoke-virtual {p1, p2, v3}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    goto :goto_0

    .line 451
    :cond_1
    new-instance v3, Ldroidninja/filepicker/utils/TabLayoutHelper$6;

    invoke-direct {v3, p0}, Ldroidninja/filepicker/utils/TabLayoutHelper$6;-><init>(Ldroidninja/filepicker/utils/TabLayoutHelper;)V

    iput-object v3, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUpdateScrollPositionRunnable:Ljava/lang/Runnable;

    .line 458
    iget-object v3, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v4, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUpdateScrollPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected cancelPendingAdjustTabMode()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAdjustTabModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAdjustTabModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAdjustTabModeRunnable:Ljava/lang/Runnable;

    .line 294
    :cond_0
    return-void
.end method

.method protected cancelPendingSetTabsFromPagerAdapter()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mSetTabsFromPagerAdapterRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mSetTabsFromPagerAdapterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mSetTabsFromPagerAdapterRunnable:Ljava/lang/Runnable;

    .line 301
    :cond_0
    return-void
.end method

.method protected cancelPendingUpdateScrollPosition()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUpdateScrollPositionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUpdateScrollPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUpdateScrollPositionRunnable:Ljava/lang/Runnable;

    .line 308
    :cond_0
    return-void
.end method

.method protected createNewTab(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/PagerAdapter;I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1
    .param p1, "tabLayout"    # Landroid/support/design/widget/TabLayout;
    .param p2, "adapter"    # Landroid/support/v4/view/PagerAdapter;
    .param p3, "position"    # I

    .prologue
    .line 335
    invoke-virtual {p0, p1, p2, p3}, Ldroidninja/filepicker/utils/TabLayoutHelper;->onCreateTab(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/PagerAdapter;I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    return-object v0
.end method

.method protected determineTabMode(Landroid/support/design/widget/TabLayout;)I
    .locals 14
    .param p1, "tabLayout"    # Landroid/support/design/widget/TabLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 400
    invoke-virtual {p1, v11}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 402
    .local v3, "slidingTabStrip":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 407
    .local v0, "childCount":I
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v13

    sub-int v7, v12, v13

    .line 408
    .local v7, "tabLayoutWidth":I
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v13

    sub-int v6, v12, v13

    .line 410
    .local v6, "tabLayoutHeight":I
    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v10

    .line 414
    :cond_1
    const/4 v4, 0x0

    .line 415
    .local v4, "stripWidth":I
    const/4 v2, 0x0

    .line 416
    .local v2, "maxWidthTab":I
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 418
    .local v5, "tabHeightMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 419
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 420
    .local v8, "tabView":Landroid/view/View;
    invoke-virtual {v8, v11, v5}, Landroid/view/View;->measure(II)V

    .line 421
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 422
    .local v9, "tabWidth":I
    add-int/2addr v4, v9

    .line 423
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 426
    .end local v8    # "tabView":Landroid/view/View;
    .end local v9    # "tabWidth":I
    :cond_2
    if-ge v4, v7, :cond_3

    div-int v12, v7, v0

    if-lt v2, v12, :cond_0

    :cond_3
    move v10, v11

    goto :goto_0
.end method

.method public getTabLayout()Landroid/support/design/widget/TabLayout;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected handleOnAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "oldAdapter"    # Landroid/support/v4/view/PagerAdapter;
    .param p3, "newAdapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 275
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eq v0, p1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 279
    :cond_0
    if-eqz p2, :cond_1

    .line 280
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 282
    :cond_1
    if-eqz p3, :cond_2

    .line 283
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p3, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 286
    :cond_2
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v0, p3, v1}, Ldroidninja/filepicker/utils/TabLayoutHelper;->setTabsFromPagerAdapter(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/PagerAdapter;I)V

    goto :goto_0
.end method

.method protected handleOnDataSetChanged()V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Ldroidninja/filepicker/utils/TabLayoutHelper;->cancelPendingUpdateScrollPosition()V

    .line 230
    invoke-virtual {p0}, Ldroidninja/filepicker/utils/TabLayoutHelper;->cancelPendingSetTabsFromPagerAdapter()V

    .line 232
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mSetTabsFromPagerAdapterRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ldroidninja/filepicker/utils/TabLayoutHelper$4;

    invoke-direct {v0, p0}, Ldroidninja/filepicker/utils/TabLayoutHelper$4;-><init>(Ldroidninja/filepicker/utils/TabLayoutHelper;)V

    iput-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mSetTabsFromPagerAdapterRunnable:Ljava/lang/Runnable;

    .line 241
    :cond_0
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mSetTabsFromPagerAdapterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void
.end method

.method protected handleOnTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 266
    iget-boolean v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mDuringSetTabsFromPagerAdapter:Z

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUserOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUserOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0
.end method

.method protected handleOnTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 245
    iget-boolean v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mDuringSetTabsFromPagerAdapter:Z

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 249
    invoke-virtual {p0}, Ldroidninja/filepicker/utils/TabLayoutHelper;->cancelPendingUpdateScrollPosition()V

    .line 251
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUserOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUserOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0
.end method

.method protected handleOnTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 257
    iget-boolean v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mDuringSetTabsFromPagerAdapter:Z

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUserOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUserOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0
.end method

.method public isAutoAdjustTabModeEnabled()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAutoAdjustTabMode:Z

    return v0
.end method

.method protected onCreateTab(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/PagerAdapter;I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 2
    .param p1, "tabLayout"    # Landroid/support/design/widget/TabLayout;
    .param p2, "adapter"    # Landroid/support/v4/view/PagerAdapter;
    .param p3, "position"    # I

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 210
    .local v0, "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual {p2, p3}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 211
    return-object v0
.end method

.method protected onUpdateTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 223
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p0}, Ldroidninja/filepicker/utils/TabLayoutHelper;->cancelPendingAdjustTabMode()V

    .line 169
    invoke-virtual {p0}, Ldroidninja/filepicker/utils/TabLayoutHelper;->cancelPendingSetTabsFromPagerAdapter()V

    .line 170
    invoke-virtual {p0}, Ldroidninja/filepicker/utils/TabLayoutHelper;->cancelPendingUpdateScrollPosition()V

    .line 172
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalOnAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalOnAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 174
    iput-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalOnAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    .line 176
    :cond_0
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 178
    iput-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 180
    :cond_1
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->removeOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 182
    iput-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 184
    :cond_2
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalTabLayoutOnPageChangeListener:Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalTabLayoutOnPageChangeListener:Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 186
    iput-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalTabLayoutOnPageChangeListener:Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;

    .line 188
    :cond_3
    iput-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUserOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 189
    iput-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 190
    iput-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 191
    return-void
.end method

.method public setAutoAdjustTabModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 131
    iget-boolean v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAutoAdjustTabMode:Z

    if-ne v0, p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_0
    iput-boolean p1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAutoAdjustTabMode:Z

    .line 136
    iget-boolean v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAutoAdjustTabMode:Z

    if-eqz v0, :cond_1

    .line 137
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/utils/TabLayoutHelper;->adjustTabMode(I)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Ldroidninja/filepicker/utils/TabLayoutHelper;->cancelPendingAdjustTabMode()V

    goto :goto_0
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iput-object p1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUserOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 161
    return-void
.end method

.method protected setTabsFromPagerAdapter(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/PagerAdapter;I)V
    .locals 8
    .param p1, "tabLayout"    # Landroid/support/design/widget/TabLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "currentItem"    # I

    .prologue
    const/4 v7, 0x0

    .line 356
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mDuringSetTabsFromPagerAdapter:Z

    .line 358
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v4

    .line 359
    .local v4, "prevSelectedTab":I
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v3

    .line 362
    .local v3, "prevScrollX":I
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 365
    if-eqz p2, :cond_1

    .line 366
    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 367
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 368
    invoke-virtual {p0, p1, p2, v2}, Ldroidninja/filepicker/utils/TabLayoutHelper;->createNewTab(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/PagerAdapter;I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    .line 369
    .local v5, "tab":Landroid/support/design/widget/TabLayout$Tab;
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 370
    invoke-virtual {p0, v5}, Ldroidninja/filepicker/utils/TabLayoutHelper;->updateTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v5    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_0
    add-int/lit8 v6, v0, -0x1

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 375
    if-ltz p3, :cond_1

    .line 376
    invoke-virtual {p1, p3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 381
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_1
    iget-boolean v6, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAutoAdjustTabMode:Z

    if-eqz v6, :cond_3

    .line 382
    invoke-virtual {p0, v3}, Ldroidninja/filepicker/utils/TabLayoutHelper;->adjustTabMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :cond_2
    :goto_1
    iput-boolean v7, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mDuringSetTabsFromPagerAdapter:Z

    .line 393
    return-void

    .line 385
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->getTabMode()I

    move-result v1

    .line 386
    .local v1, "curTabMode":I
    if-nez v1, :cond_2

    .line 387
    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 391
    .end local v1    # "curTabMode":I
    .end local v3    # "prevScrollX":I
    .end local v4    # "prevSelectedTab":I
    :catchall_0
    move-exception v6

    iput-boolean v7, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mDuringSetTabsFromPagerAdapter:Z

    throw v6
.end method

.method protected setupWithViewPager(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "tabLayout"    # Landroid/support/design/widget/TabLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 339
    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 340
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_0

    .line 341
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ldroidninja/filepicker/utils/TabLayoutHelper;->setTabsFromPagerAdapter(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/PagerAdapter;I)V

    .line 346
    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    iget-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 348
    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalTabLayoutOnPageChangeListener:Ldroidninja/filepicker/utils/TabLayoutHelper$FixedTabLayoutOnPageChangeListener;

    invoke-virtual {p2, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 349
    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalOnAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    invoke-virtual {p2, v1}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 351
    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mInternalOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {p1, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 352
    return-void
.end method

.method public updateAllTabs()V
    .locals 3

    .prologue
    .line 194
    iget-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    .line 195
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 196
    iget-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, Ldroidninja/filepicker/utils/TabLayoutHelper;->updateTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method protected updateTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Ldroidninja/filepicker/utils/TabLayoutHelper;->onUpdateTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 397
    return-void
.end method
