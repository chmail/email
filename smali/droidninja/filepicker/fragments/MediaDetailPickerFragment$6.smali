.class Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$6;
.super Ljava/lang/Object;
.source "MediaDetailPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    .prologue
    .line 243
    iput-object p1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$6;->this$0:Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$6;->this$0:Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    invoke-static {v0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->access$400(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)V

    .line 248
    return-void
.end method
