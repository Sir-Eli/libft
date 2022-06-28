/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa_base.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: esirnio <esirnio@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/28 13:40:54 by esirnio           #+#    #+#             */
/*   Updated: 2022/06/28 13:44:29 by esirnio          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_itoa_base(int value, int base)
{
	static char	hex[] = "0123456789abcdef";
	static char	buf[50];
	char		*ret;
	int			i;

	ret = &buf[49];
	*ret = '\0';
	if (value < 0 && base == 10)
	{
		value = value * -1;
		i = -1;
	}
	else
		i = 1;
	while (1)
	{
		ret--;
		*ret = hex[value % base];
		value = value / base;
		if (value == 0)
			break ;
	}
	if (i == -1)
		*--ret = '-';
	return (ret);
}
