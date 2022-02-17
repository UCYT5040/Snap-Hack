.class Lcom/elenco/snapcoder/BotCode/loop_input$1;
.super Ljava/lang/Object;
.source "loop_input.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/loop_input;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/loop_input;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/loop_input;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/loop_input;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/loop_input$1;->this$0:Lcom/elenco/snapcoder/BotCode/loop_input;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/loop_input$1;->this$0:Lcom/elenco/snapcoder/BotCode/loop_input;

    invoke-static {v0}, Lcom/elenco/snapcoder/BotCode/loop_input;->access$000(Lcom/elenco/snapcoder/BotCode/loop_input;)V

    .line 36
    return-void
.end method
