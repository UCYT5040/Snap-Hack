.class Lcom/elenco/snapcoder/bluetooth/BotCallBack$5;
.super Ljava/lang/Object;
.source "BotCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/bluetooth/BotCallBack;->onBotDisconnected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

.field final synthetic val$position:I

.field final synthetic val$setDisabledTable:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/bluetooth/BotCallBack;Landroid/widget/LinearLayout;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$5;->this$0:Lcom/elenco/snapcoder/bluetooth/BotCallBack;

    iput-object p2, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$5;->val$setDisabledTable:Landroid/widget/LinearLayout;

    iput p3, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$5;->val$setDisabledTable:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/elenco/snapcoder/bluetooth/BotCallBack$5;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 357
    return-void
.end method
