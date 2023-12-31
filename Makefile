##
## backend
## File description:
## Makefile
##

GO	=	go

NAME	=	bin/popuctl

SRCDIR	=	.

SRC		=	main.go

SRC			:= $(addprefix $(SRCDIR)/, $(SRC))

GOFLAGS =	--trimpath --mod=vendor

all: $(NAME)

$(NAME):
	$(GO) mod vendor
	$(GO) build $(GOFLAGS) -o $(NAME) $(SRC)

install:
	go install -v ./...

fclean:
	rm -f ./$(NAME)

re:	fclean all