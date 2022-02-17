.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1$1;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1$1;->this$2:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1$1;->this$2:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1;

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$13;->val$reassignLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 393
    return-void
.end method
