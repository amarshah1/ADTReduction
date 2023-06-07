
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
(assert (and (= l0 Nil) (= l3 l1) (= l3 l1)) )
(assert (not (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (or (= l2 l2) (= l2 l2)) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)
