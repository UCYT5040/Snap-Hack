.class Lcom/elenco/snapcoder/BotCode/ProgramSaver$2;
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
    .line 90
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$2;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$2;->this$0:Lcom/elenco/snapcoder/BotCode/ProgramSaver;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/BotCode/ProgramSaver;->closeMe()V

    .line 94
    return-void
.end method
