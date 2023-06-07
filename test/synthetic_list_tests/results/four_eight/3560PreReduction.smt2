
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
(assert (or (is-Cons l3) (= l0 l2) (= l0 l2)) )
(assert (is-Cons Nil) )
(assert (= l3 l1) )
(assert (not (= l3 l0)) )
(assert (not (is-Nil l0)) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (= l2 l3) )
(check-sat)
