.class Ldroidninja/filepicker/utils/TabLayoutHelper$2;
.super Ljava/lang/Object;
.source "TabLayoutHelper.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


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
    .line 74
    iput-object p1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$2;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 87
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$2;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/utils/TabLayoutHelper;->handleOnTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 88
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 77
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$2;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/utils/TabLayoutHelper;->handleOnTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 78
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 82
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$2;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/utils/TabLayoutHelper;->handleOnTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 83
    return-void
.end method
