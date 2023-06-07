
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
(assert (not (= l2 l0)) )
(assert (= l0 l3) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l0 Nil) (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l0 l1)) )
(assert (or (is-Cons Nil) (= l3 Nil)) )
(assert (= l3 l1) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
