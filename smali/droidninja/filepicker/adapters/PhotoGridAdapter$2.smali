.class Ldroidninja/filepicker/adapters/PhotoGridAdapter$2;
.super Ljava/lang/Object;
.source "PhotoGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/adapters/PhotoGridAdapter;->onBindViewHolder(Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

.field final synthetic val$holder:Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;

.field final synthetic val$media:Ldroidninja/filepicker/models/Media;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/adapters/PhotoGridAdapter;Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;Ldroidninja/filepicker/models/Media;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    .prologue
    .line 99
    iput-object p1, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$2;->this$0:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    iput-object p2, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$2;->val$holder:Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;

    iput-object p3, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$2;->val$media:Ldroidninja/filepicker/models/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$2;->this$0:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    iget-object v1, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$2;->val$holder:Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;

    iget-object v2, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$2;->val$media:Ldroidninja/filepicker/models/Media;

    invoke-static {v0, v1, v2}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->access$000(Ldroidninja/filepicker/adapters/PhotoGridAdapter;Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;Ldroidninja/filepicker/models/Media;)V

    .line 103
    return-void
.end method
