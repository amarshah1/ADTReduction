
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
(assert (and (= l0 l3) (is-Cons Nil) (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l3 l1) (is-Cons l1) (= l0 l2)) )
(assert (is-Cons Nil) )
(check-sat)
