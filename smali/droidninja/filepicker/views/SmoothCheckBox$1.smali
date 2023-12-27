.class Ldroidninja/filepicker/views/SmoothCheckBox$1;
.super Ljava/lang/Object;
.source "SmoothCheckBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/views/SmoothCheckBox;->init(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/views/SmoothCheckBox;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/views/SmoothCheckBox;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/views/SmoothCheckBox;

    .prologue
    .line 96
    iput-object p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox$1;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$1;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->toggle()V

    .line 100
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$1;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$002(Ldroidninja/filepicker/views/SmoothCheckBox;Z)Z

    .line 101
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$1;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$102(Ldroidninja/filepicker/views/SmoothCheckBox;F)F

    .line 102
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$1;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$1;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-static {v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$200(Ldroidninja/filepicker/views/SmoothCheckBox;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$1;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-static {v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$300(Ldroidninja/filepicker/views/SmoothCheckBox;)V

    goto :goto_0
.end method
