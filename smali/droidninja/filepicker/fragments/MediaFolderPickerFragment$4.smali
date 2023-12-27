.class Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$4;
.super Ljava/lang/Object;
.source "MediaFolderPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    .prologue
    .line 253
    iput-object p1, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$4;->this$0:Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$4;->this$0:Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    invoke-static {v0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->access$300(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)V

    .line 258
    return-void
.end method
