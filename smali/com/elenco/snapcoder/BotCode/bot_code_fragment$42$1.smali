.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42$1;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;

    .prologue
    .line 2019
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2022
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getBotEditSelection()Lcom/elenco/snapcoder/BotCode/botEditFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;

    iget v1, v1, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;->val$commandId:I

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;

    iget v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;->val$position:I

    add-int/lit8 v2, v2, -0x2

    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;

    iget-object v3, v3, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$42;->val$speedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/elenco/snapcoder/BotCode/botEditFragment;->DisplayInformation(IILandroid/widget/ImageView;)V

    .line 2023
    return-void
.end method
