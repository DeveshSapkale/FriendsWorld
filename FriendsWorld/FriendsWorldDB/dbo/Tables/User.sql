CREATE TABLE [dbo].[User] (
    [UserId]          INT            NOT NULL,
    [FirstName]       VARCHAR (50)   NOT NULL,
    [LastName]        VARCHAR (50)   NOT NULL,
    [UserName]        VARCHAR (50)   NOT NULL,
    [DOB]             DATE           NOT NULL,
    [Gender]          CHAR (1)       NOT NULL,
    [EmailId]         NVARCHAR (100) NOT NULL,
    [Password]        VARCHAR (MAX)  NOT NULL,
    [IsEmailVerified] BIT            CONSTRAINT [DF_User_IsEmailVerified] DEFAULT ((0)) NOT NULL,
    [Status]          BIT            CONSTRAINT [DF_User_Status] DEFAULT ((0)) NOT NULL,
    [CreatedDate]     DATETIME       NOT NULL,
    [ModifiedDate]    DATETIME       NOT NULL,
    CONSTRAINT [PK_User_UserId] PRIMARY KEY CLUSTERED ([UserId] ASC),
    CONSTRAINT [UQ_User_EmailId] UNIQUE NONCLUSTERED ([EmailId] ASC),
    CONSTRAINT [UQ_User_UserName] UNIQUE NONCLUSTERED ([UserName] ASC)
);

