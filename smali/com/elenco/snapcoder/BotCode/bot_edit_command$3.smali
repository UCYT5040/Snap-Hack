.class Lcom/elenco/snapcoder/BotCode/bot_edit_command$3;
.super Ljava/lang/Object;
.source "bot_edit_command.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_edit_command;->LoadInBots(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

.field final synthetic val$botImageClone:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_edit_command;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$3;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$3;->val$botImageClone:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$3;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$3;->val$botImageClone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->BotChosen(Landroid/widget/ImageButton;)V

    .line 376
    return-void
.end method
