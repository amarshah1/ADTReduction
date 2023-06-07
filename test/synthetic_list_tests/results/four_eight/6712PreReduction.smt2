
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
(assert (is-Nil l3) )
(assert (= l1 Nil) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l2 l3) (= l3 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (is-Nil l2) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l1 l1)) )
(check-sat)
