CREATE TABLE [dbo].[category] (
    [Id]          INT           NOT NULL,
    [name]        VARCHAR (30)  NULL,
    [description] VARCHAR (250) NULL,
    [image]       IMAGE         NULL,
    [thumbnail]   IMAGE         NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

