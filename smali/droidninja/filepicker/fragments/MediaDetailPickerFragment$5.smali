.class Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$5;
.super Ljava/lang/Object;
.source "MediaDetailPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->updateList(Ljava/util/List;)V
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
    .line 210
    iput-object p1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$5;->this$0:Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    :try_start_0
    iget-object v2, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$5;->this$0:Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    invoke-static {v2}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->access$300(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)Ldroidninja/filepicker/utils/ImageCaptureManager;

    move-result-object v2

    iget-object v3, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$5;->this$0:Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    invoke-virtual {v3}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldroidninja/filepicker/utils/ImageCaptureManager;->dispatchTakePictureIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 215
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 216
    iget-object v2, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$5;->this$0:Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    const/16 v3, 0x101

    invoke-virtual {v2, v1, v3}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 222
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 218
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$5;->this$0:Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    invoke-virtual {v2}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Ldroidninja/filepicker/R$string;->no_camera_exists:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
