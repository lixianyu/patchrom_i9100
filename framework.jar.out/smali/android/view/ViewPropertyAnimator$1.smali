.class Landroid/view/ViewPropertyAnimator$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Landroid/view/ViewPropertyAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator$1;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$1;->this$0:Landroid/view/ViewPropertyAnimator;

    #calls: Landroid/view/ViewPropertyAnimator;->startAnimation()V
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$100(Landroid/view/ViewPropertyAnimator;)V

    .line 148
    return-void
.end method
