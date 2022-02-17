.class Lcom/elenco/snapcoder/BotCode/bot_edit_command$4;
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


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$4;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$4;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedToggle:Landroid/widget/ImageView;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 458
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$4;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    const-string v1, "Fast"

    iput-object v1, v0, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->speedSelected:Ljava/lang/String;

    .line 459
    return-void
.end method
