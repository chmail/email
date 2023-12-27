.class Ldroidninja/filepicker/utils/TabLayoutHelper$5;
.super Ljava/lang/Object;
.source "TabLayoutHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/utils/TabLayoutHelper;->adjustTabMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

.field final synthetic val$prevScrollX1:I


# direct methods
.method constructor <init>(Ldroidninja/filepicker/utils/TabLayoutHelper;I)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/utils/TabLayoutHelper;

    .prologue
    .line 323
    iput-object p1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$5;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    iput p2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$5;->val$prevScrollX1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$5;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mAdjustTabModeRunnable:Ljava/lang/Runnable;

    .line 327
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$5;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    iget-object v1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$5;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    iget-object v1, v1, Ldroidninja/filepicker/utils/TabLayoutHelper;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget v2, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$5;->val$prevScrollX1:I

    invoke-virtual {v0, v1, v2}, Ldroidninja/filepicker/utils/TabLayoutHelper;->adjustTabModeInternal(Landroid/support/design/widget/TabLayout;I)V

    .line 328
    return-void
.end method
