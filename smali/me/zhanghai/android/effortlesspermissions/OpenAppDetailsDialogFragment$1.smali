.class Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment$1;
.super Ljava/lang/Object;
.source "OpenAppDetailsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;


# direct methods
.method constructor <init>(Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;

    .prologue
    .line 101
    iput-object p1, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment$1;->this$0:Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment$1;->this$0:Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;

    invoke-static {v0}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->access$000(Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;)V

    .line 105
    return-void
.end method
