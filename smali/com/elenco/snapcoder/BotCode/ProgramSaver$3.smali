.class Lcom/elenco/snapcoder/BotCode/ProgramSaver$3;
.super Ljava/lang/Object;
.source "ProgramSaver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/ProgramSaver;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$3;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$3;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->setUpCommandList()Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "commandArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/elenco/snapcoder/BotCode/BotCommand;>;"
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$3;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    invoke-virtual {v1, v0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->cloudSave(Ljava/util/ArrayList;)V

    .line 103
    return-void
.end method
