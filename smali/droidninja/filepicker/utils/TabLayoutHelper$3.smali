.class Ldroidninja/filepicker/utils/TabLayoutHelper$3;
.super Ljava/lang/Object;
.source "TabLayoutHelper.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/utils/TabLayoutHelper;-><init>(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)V
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
    .line 93
    iput-object p1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$3;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldAdapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "newAdapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$3;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    invoke-virtual {v0, p1, p2, p3}, Ldroidninja/filepicker/utils/TabLayoutHelper;->handleOnAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 97
    return-void
.end method
