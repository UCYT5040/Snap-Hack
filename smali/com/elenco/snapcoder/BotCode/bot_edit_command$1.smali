.class Lcom/elenco/snapcoder/BotCode/bot_edit_command$1;
.super Ljava/lang/Object;
.source "bot_edit_command.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_edit_command;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 71
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$1;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_edit_command$1;->this$0:Lcom/elenco/snapcoder/BotCode/bot_edit_command;

    invoke-static {v0}, Lcom/elenco/snapcoder/BotCode/bot_edit_command;->access$000(Lcom/elenco/snapcoder/BotCode/bot_edit_command;)V

    .line 75
    return-void
.end method
