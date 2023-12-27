.class Ldroidninja/filepicker/utils/TabLayoutHelper$1;
.super Landroid/database/DataSetObserver;
.source "TabLayoutHelper.java"


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
    .line 67
    iput-object p1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$1;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$1;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    invoke-virtual {v0}, Ldroidninja/filepicker/utils/TabLayoutHelper;->handleOnDataSetChanged()V

    .line 71
    return-void
.end method
