.class Ldroidninja/filepicker/utils/TabLayoutHelper$4;
.super Ljava/lang/Object;
.source "TabLayoutHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/utils/TabLayoutHelper;->handleOnDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/utils/TabLayoutHelper;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/utils/TabLayoutHelper;

    .prologue
    .line 233
    iput-object p1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$4;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$4;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$4;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    iget-object v1, v1, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$4;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    iget-object v2, v2, Ldroidninja/filepicker/utils/TabLayoutHelper;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    iget-object v3, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$4;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    iget-object v3, v3, Ldroidninja/filepicker/utils/TabLayoutHelper;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ldroidninja/filepicker/utils/TabLayoutHelper;->setTabsFromPagerAdapter(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/PagerAdapter;I)V

    .line 237
    return-void
.end method
