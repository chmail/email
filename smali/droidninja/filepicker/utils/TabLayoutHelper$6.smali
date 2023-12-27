.class Ldroidninja/filepicker/utils/TabLayoutHelper$6;
.super Ljava/lang/Object;
.source "TabLayoutHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/utils/TabLayoutHelper;->adjustTabModeInternal(Landroid/support/design/widget/TabLayout;I)V
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
    .line 451
    iput-object p1, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$6;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$6;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Ldroidninja/filepicker/utils/TabLayoutHelper;->mUpdateScrollPositionRunnable:Ljava/lang/Runnable;

    .line 455
    iget-object v0, p0, Ldroidninja/filepicker/utils/TabLayoutHelper$6;->this$0:Ldroidninja/filepicker/utils/TabLayoutHelper;

    invoke-static {v0}, Ldroidninja/filepicker/utils/TabLayoutHelper;->access$000(Ldroidninja/filepicker/utils/TabLayoutHelper;)V

    .line 456
    return-void
.end method
