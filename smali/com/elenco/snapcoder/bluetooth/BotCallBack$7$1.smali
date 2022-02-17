.class Lcom/elenco/snapcoder/bluetooth/BotCallBack$7$1;
.super Ljava/lang/Object;
.source "BotCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$7$1;->this$1:Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;

    iput p2, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$7$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$7$1;->this$1:Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;

    iget-object v0, v0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$7;->val$setDisabledTable:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$7$1;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 409
    return-void
.end method
