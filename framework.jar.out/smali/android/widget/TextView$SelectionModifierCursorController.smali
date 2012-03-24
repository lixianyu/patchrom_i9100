.class Landroid/widget/TextView$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8


# instance fields
.field private mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

.field private mStartHandleOnTop:Z

.field private mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 11797
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11787
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    .line 11794
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 11798
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 11799
    return-void
.end method

.method static synthetic access$9500(Landroid/widget/TextView$SelectionModifierCursorController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11780
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->switchStartHandle()V

    return-void
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 11811
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$8000(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11812
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$8200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleLeftRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$8100(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$8002(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 11815
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11816
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$8500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRightRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$8400(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$8302(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 11820
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11821
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$8800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleLeftTopRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$8700(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$8602(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 11825
    :cond_2
    return-void
.end method

.method private initHandles()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 11829
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-nez v0, :cond_0

    .line 11830
    new-instance v0, Landroid/widget/TextView$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$8000(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionStartHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    .line 11832
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-nez v0, :cond_1

    .line 11833
    new-instance v0, Landroid/widget/TextView$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TextView;->access$8000(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionEndHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    .line 11836
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11837
    new-instance v0, Landroid/widget/TextView$SelectionStartTopHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionStartTopHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    .line 11841
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->show()V

    .line 11842
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->show()V

    .line 11844
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_3

    .line 11845
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartTopHandleView;->show()V

    .line 11850
    :cond_3
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v0, :cond_5

    .line 11851
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    .line 11852
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 11866
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/TextView$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/TextView$ActionPopupWindow;)V

    .line 11868
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/TextView;->access$7900(Landroid/widget/TextView;)V

    .line 11869
    return-void

    .line 11854
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    .line 11855
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_4

    .line 11856
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchStartHandle()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 12007
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 12008
    .local v0, mTmpCoords:[I
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 12009
    iget-boolean v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v1, :cond_2

    .line 12010
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12011
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    .line 12013
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12020
    :cond_1
    :goto_0
    return-void

    .line 12015
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12016
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12018
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 11927
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 11928
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 11929
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 11930
    .local v1, offset:I
    iget v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 11931
    :cond_0
    iget v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 11928
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11933
    .end local v1           #offset:I
    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 11940
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 11936
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public getStartHandleToTop()Z
    .locals 1

    .prologue
    .line 11988
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 11872
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->hide()V

    .line 11873
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->hide()V

    .line 11875
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartTopHandleView;->hide()V

    .line 11877
    :cond_2
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11952
    iget-boolean v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v2, :cond_2

    .line 11953
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionStartTopHandleView;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11955
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 11953
    goto :goto_0

    .line 11955
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionStartHandleView;->isDragging()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 11968
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 11969
    .local v0, observer:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 11971
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->onDetached()V

    .line 11972
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionEndHandleView;->onDetached()V

    .line 11974
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->onDetached()V

    .line 11976
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 11882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 11921
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 11884
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 11885
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 11888
    .local v6, y:F
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7, v5, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v7

    iput v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 11891
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    sub-long v3, v7, v9

    .line 11892
    .local v3, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gtz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isPositionOnText(FF)Z
    invoke-static {v7, v5, v6}, Landroid/widget/TextView;->access$8900(Landroid/widget/TextView;FF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 11894
    iget v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:F

    sub-float v0, v5, v7

    .line 11895
    .local v0, deltaX:F
    iget v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:F

    sub-float v1, v6, v7

    .line 11896
    .local v1, deltaY:F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    .line 11897
    .local v2, distanceSquared:F
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSquaredTouchSlopDistance:I
    invoke-static {v7}, Landroid/widget/TextView;->access$7600(Landroid/widget/TextView;)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_1

    .line 11898
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->startSelectionActionMode()Z
    invoke-static {v7}, Landroid/widget/TextView;->access$9000(Landroid/widget/TextView;)Z

    .line 11899
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    const/4 v8, 0x1

    #setter for: Landroid/widget/TextView;->mDiscardNextActionUp:Z
    invoke-static {v7, v8}, Landroid/widget/TextView;->access$9102(Landroid/widget/TextView;Z)Z

    .line 11903
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    :cond_1
    iput v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 11904
    iput v6, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto :goto_0

    .line 11911
    .end local v3           #duration:J
    .end local v5           #x:F
    .end local v6           #y:F
    :pswitch_2
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/TextView;->access$9200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 11913
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 11918
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto :goto_0

    .line 11882
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 11961
    if-nez p1, :cond_0

    .line 11962
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 11964
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 11944
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 11945
    return-void
.end method

.method public setStartHandleToTop(Z)V
    .locals 1
    .parameter "toTop"

    .prologue
    .line 11980
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mThemeDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11981
    iput-boolean p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    .line 11985
    :goto_0
    return-void

    .line 11983
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 11802
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11808
    :goto_0
    return-void

    .line 11805
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->initDrawables()V

    .line 11806
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->initHandles()V

    .line 11807
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/TextView;->access$7900(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public unvisibleAllHandle()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 11992
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    .line 11993
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 11994
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setVisibility(I)V

    .line 11995
    :cond_2
    return-void
.end method

.method public visibleAllHandle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11998
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v0, :cond_2

    .line 11999
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    .line 12003
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setVisibility(I)V

    .line 12004
    :cond_1
    return-void

    .line 12001
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    goto :goto_0
.end method
