
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (is-Cons Nil) )
(assert (= l1 l3) )
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Cons Nil) (= l0 l3)) )
(assert (not (= l3 Nil)) )
(assert (= l3 l3) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
